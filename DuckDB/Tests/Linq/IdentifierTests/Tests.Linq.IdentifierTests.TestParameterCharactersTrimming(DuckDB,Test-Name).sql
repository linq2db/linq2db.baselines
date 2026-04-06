-- DuckDB
DECLARE $TestName  -- Int32
SET     $TestName = 2

UPDATE
	testparams
SET
	"Test-Name" = CAST($TestName AS INTEGER)
WHERE
	testparams."Test-Name" = 1

