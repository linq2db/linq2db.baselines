-- DuckDB
DECLARE $r3  -- Int32
SET     $r3 = 3

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Two = i.One * 2 AND i.Three = CAST($r3 AS INTEGER)

