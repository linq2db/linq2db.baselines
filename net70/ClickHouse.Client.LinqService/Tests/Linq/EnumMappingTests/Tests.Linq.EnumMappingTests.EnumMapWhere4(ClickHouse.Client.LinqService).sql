BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(102)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue
)
VALUES
(
	toInt32(101),
	toInt64(12)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.BigIntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = toInt32(101) AND r.BigIntValue = toInt64(12)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= toInt32(101) AND ID < toInt32(102)

