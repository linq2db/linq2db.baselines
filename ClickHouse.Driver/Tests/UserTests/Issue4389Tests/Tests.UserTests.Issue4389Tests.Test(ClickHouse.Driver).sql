-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE UniqueIdTmp
(
	ID Int32
)
ENGINE = Memory()

INSERT ASYNC BULK UniqueIdTmp(ID)

INSERT ASYNC BULK UniqueIdTmp(ID)

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	UniqueIdTmp t1

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS UniqueIdTmp

