BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO LinqDataTypes
(
	ID,
	GuidValue,
	BoolValue
)
SELECT
	toInt32(t2.Value_1 + toFloat64(1001)),
	generateUUIDv4(),
	true
FROM
	(
		SELECT DISTINCT
			Floor(toFloat64(t1.ID) / toFloat64(3)) as Value_1
		FROM
			LinqDataTypes t1
	) t2

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > 1000

