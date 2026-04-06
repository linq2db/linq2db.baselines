-- DuckDB
DECLARE $int1  -- Int32
SET     $int1 = 11
DECLARE $int2  -- Int32
SET     $int2 = 22
DECLARE $int3  -- Int32
SET     $int3 = 33
DECLARE $someId  -- Int32
SET     $someId = 100
DECLARE $take  -- Int32
SET     $take = 2
DECLARE $skip  -- Int32
SET     $skip = 1

UPDATE
	UpdatedEntities
SET
	Value1 = t1.c1,
	Value2 = t1.c2,
	Value3 = t1.c3
FROM
	(
		SELECT
			(c_1.Value1 * t.Value1) * CAST($int1 AS INTEGER) as c1,
			(c_1.Value2 * t.Value2) * CAST($int2 AS INTEGER) as c2,
			(c_1.Value3 * t.Value3) * CAST($int3 AS INTEGER) as c3,
			c_1.id
		FROM
			UpdatedEntities c_1
				INNER JOIN NewEntities t ON t.id = c_1.id
		WHERE
			t.id <> CAST($someId AS INTEGER)
		ORDER BY
			c_1.id
		LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 
	) t1
WHERE
	UpdatedEntities.id = t1.id

-- DuckDB

SELECT
	v.id,
	v.Value1,
	v.Value2,
	v.Value3
FROM
	UpdatedEntities v

