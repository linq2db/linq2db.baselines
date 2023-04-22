﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WhereWithString

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS WhereWithString
(
	Id          Int32,
	StringValue Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO WhereWithString
(
	Id,
	StringValue
)
VALUES
(
	toInt32(1),
	'Str1'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	x.Id = toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WhereWithString

