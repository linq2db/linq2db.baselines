-- DuckDB
DECLARE $int1  -- Int32
SET     $int1 = 11
DECLARE $int2  -- Int32
SET     $int2 = 22
DECLARE $int3  -- Int32
SET     $int3 = 33
DECLARE $someId  -- Int32
SET     $someId = 100

UPDATE
	UpdatedEntities
SET
	Value1 = (UpdatedEntities.Value1 * t.Value1) * CAST($int1 AS INTEGER),
	Value2 = (UpdatedEntities.Value2 * t.Value2) * CAST($int2 AS INTEGER),
	Value3 = (UpdatedEntities.Value3 * t.Value3) * CAST($int3 AS INTEGER)
FROM
	NewEntities t
WHERE
	t.id = UpdatedEntities.id AND t.id <> CAST($someId AS INTEGER)

-- DuckDB

SELECT
	v.id,
	v.Value1,
	v.Value2,
	v.Value3
FROM
	UpdatedEntities v

