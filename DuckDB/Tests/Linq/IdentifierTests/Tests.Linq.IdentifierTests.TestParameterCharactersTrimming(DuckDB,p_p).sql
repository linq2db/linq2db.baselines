-- DuckDB
DECLARE $p_p  -- Int32
SET     $p_p = 2

UPDATE
	testparams
SET
	p_p = CAST($p_p AS INTEGER)
WHERE
	testparams.p_p = 1

