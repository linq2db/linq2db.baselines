-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3

SELECT DISTINCT
	r."Value"
FROM
	TakeSkipClass r
LIMIT CAST($take AS INTEGER)

