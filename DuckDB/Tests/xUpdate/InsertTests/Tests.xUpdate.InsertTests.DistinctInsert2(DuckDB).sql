-- DuckDB

DELETE FROM
	LinqDataTypes c_1
WHERE
	c_1.ID > 1000

-- DuckDB

INSERT INTO LinqDataTypes
(
	ID,
	GuidValue,
	BoolValue
)
SELECT
	CAST(Floor(t2.Value_1 + 1001) AS INTEGER),
	uuid(),
	True
FROM
	(
		SELECT DISTINCT
			Floor(CAST(t1.ID AS DOUBLE) / 3) as Value_1
		FROM
			LinqDataTypes t1
	) t2

-- DuckDB

DELETE FROM
	LinqDataTypes c_1
WHERE
	c_1.ID > 1000

