BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BananaTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS BananaTable
(
	Id       Int32,
	Property Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO BananaTable
(
	Id,
	Property
)
VALUES
(
	1,
	'test1'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Property
FROM
	BananaTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	BananaTable
UPDATE
	Property = 'banana'
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Property
FROM
	BananaTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BananaTable

