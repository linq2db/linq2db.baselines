-- DuckDB
DECLARE $Test  -- Int32
SET     $Test = 2

UPDATE
	testparams
SET
	TestИмя = CAST($Test AS INTEGER)
WHERE
	testparams.TestИмя = 1

