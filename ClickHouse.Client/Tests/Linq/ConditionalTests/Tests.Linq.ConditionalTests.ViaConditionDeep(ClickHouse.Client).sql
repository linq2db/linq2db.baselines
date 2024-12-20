﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConditionalData

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ConditionalData
(
	Id         Int32,
	StringProp Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ConditionalData
(
	Id,
	StringProp
)
VALUES
(1,'String1'),
(2,'String2'),
(3,NULL),
(4,'String4'),
(5,'String5'),
(6,NULL),
(7,'String7'),
(8,'String8'),
(9,NULL),
(10,'String10'),
(11,'-1')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	CASE
		WHEN x.StringProp = '1' OR x.StringProp IS NULL THEN true
		ELSE false
	END,
	CASE
		WHEN x.StringProp = '2' THEN true
		ELSE false
	END,
	x.StringProp,
	1,
	concat(x.StringProp, '2'),
	2
FROM
	ConditionalData x
WHERE
	endsWith(CASE
		WHEN x.StringProp = '1' OR x.StringProp IS NULL THEN '2'
		WHEN x.StringProp = '2' THEN x.StringProp
		ELSE concat(x.StringProp, '2')
	END, '2') AND
	CASE
		WHEN x.StringProp = '1' OR x.StringProp IS NULL THEN NULL
		WHEN x.StringProp = '2' THEN 1
		ELSE 2
	END = 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.StringProp
FROM
	ConditionalData t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConditionalData

