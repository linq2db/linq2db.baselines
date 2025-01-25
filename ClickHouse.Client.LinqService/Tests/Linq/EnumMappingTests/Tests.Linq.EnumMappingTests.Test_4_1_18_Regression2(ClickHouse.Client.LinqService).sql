BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	BigIntValue,
	IntValue
)
VALUES
(
	101,
	toInt64(4),
	10
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN r.BigIntValue IS NOT NULL AND r.IntValue IS NOT NULL
			THEN true
		ELSE false
	END,
	r.BigIntValue,
	r.IntValue
FROM
	LinqDataTypes r
WHERE
	r.ID = 101

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID >= 101 AND ID < 102

