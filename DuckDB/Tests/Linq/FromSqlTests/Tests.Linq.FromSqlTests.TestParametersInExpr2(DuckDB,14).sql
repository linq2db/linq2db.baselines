-- DuckDB
DECLARE $startId  -- Int32
SET     $startId = 5
DECLARE $p  -- Int32
SET     $p = 14

SELECT
	s."value",
	s.id
FROM
	sample_class t1
		INNER JOIN (
			SELECT * FROM sample_class where id >= CAST($startId AS BIGINT) and id < CAST($p AS INTEGER)
		) s ON s.id = t1.id
WHERE
	s.id > 10
ORDER BY
	s.id

-- DuckDB
DECLARE $startId  -- Int32
SET     $startId = 5
DECLARE $endId  -- Int32
SET     $endId = 14

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

