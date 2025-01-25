BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO LinqDataTypes
(
	ID
)
VALUES
(
	101
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

