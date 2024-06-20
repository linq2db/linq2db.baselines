﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3360Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue3360Table
(
	Id  Int32,
	Str Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Id,
	'str1' as Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	'str2' as Str
FROM
	Issue3360Table p_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Id,
	'str2' as Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id as Id,
	'str1' as Str
FROM
	Issue3360Table p_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue3360Table

