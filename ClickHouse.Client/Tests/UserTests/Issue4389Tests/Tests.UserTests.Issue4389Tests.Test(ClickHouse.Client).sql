BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	UniqueIdTmp t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

DROP TABLE IF EXISTS UniqueIdTmp

