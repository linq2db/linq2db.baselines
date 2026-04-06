-- DuckDB
DECLARE $p  -- Int32
SET     $p = 5
DECLARE $p_1  -- Int32
SET     $p_1 = 15

SELECT
	c_1."value",
	c_1.id
FROM
	(
		SELECT * FROM sample_class where id >= CAST($p AS INTEGER) and id < CAST($p_1 AS INTEGER)
	) c_1
WHERE
	c_1.id > 10
ORDER BY
	c_1.id

-- DuckDB
DECLARE $startId  -- Int32
SET     $startId = 5
DECLARE $endId  -- Int32
SET     $endId = 15

SELECT
	t."value",
	t.id
FROM
	sample_class t
WHERE
	t.id >= CAST($startId AS INTEGER) AND t.id < CAST($endId AS INTEGER) AND
	t.id > 10
ORDER BY
	t.id

