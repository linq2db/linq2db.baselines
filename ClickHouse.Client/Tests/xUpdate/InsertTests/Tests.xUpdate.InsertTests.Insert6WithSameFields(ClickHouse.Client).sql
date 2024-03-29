﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InsertTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InsertTable
(
	Id         Int32,
	CreatedOn  Nullable(DateTime64(7)),
	ModifiedOn Nullable(DateTime64(7)),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InsertTable
(
	Id,
	CreatedOn,
	ModifiedOn
)
VALUES
(toInt32(1),toDateTime64('2020-02-29 17:54:55.1231234', 7),toDateTime64('2020-02-29 17:54:55.1231234', 7)),
(toInt32(2),toDateTime64('2020-02-29 17:54:55.1231234', 7),toDateTime64('2020-02-29 17:54:55.1231234', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InsertTable
(
	Id,
	CreatedOn,
	ModifiedOn
)
SELECT
	c_1.Id + toInt32(10),
	now(),
	now()
FROM
	InsertTable c_1
WHERE
	c_1.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InsertTable

