BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE UniqueIdTmp
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK UniqueIdTmp(ID)

BeforeExecute
INSERT ASYNC BULK UniqueIdTmp(ID)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	UniqueIdTmp t1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

DROP TABLE IF EXISTS UniqueIdTmp

