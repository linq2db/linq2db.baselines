BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > toInt32(1000)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	GuidValue,
	BoolValue
)
SELECT
	toInt32(t1.c1 + toFloat64(1001)),
	generateUUIDv4(),
	true
FROM
	(
		SELECT DISTINCT
			Floor(toFloat64(_.ID) / toFloat64(3)) as c1
		FROM
			LinqDataTypes _
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	LinqDataTypes
DELETE WHERE
	ID > toInt32(1000)

