﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WhereWithString

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS WhereWithString
(
	Id          Int32,
	StringValue Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WhereWithString

