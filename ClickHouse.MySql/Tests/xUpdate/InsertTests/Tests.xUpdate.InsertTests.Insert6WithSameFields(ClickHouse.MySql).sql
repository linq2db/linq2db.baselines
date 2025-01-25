BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InsertTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO InsertTable
(
	Id,
	CreatedOn,
	ModifiedOn
)
VALUES
(1,toDateTime64('2020-02-29 17:54:55.1231234', 7),toDateTime64('2020-02-29 17:54:55.1231234', 7)),
(2,toDateTime64('2020-02-29 17:54:55.1231234', 7),toDateTime64('2020-02-29 17:54:55.1231234', 7))

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InsertTable
(
	Id,
	CreatedOn,
	ModifiedOn
)
SELECT
	c_1.Id + 10,
	now(),
	now()
FROM
	InsertTable c_1
WHERE
	c_1.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InsertTable

