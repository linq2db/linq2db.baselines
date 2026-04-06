-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

UPDATE
	testparams
SET
	_p = CAST($p AS INTEGER)
WHERE
	testparams._p = 1

