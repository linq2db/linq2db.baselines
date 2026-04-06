-- DuckDB
DECLARE $from  -- Int32
SET     $from = 2

UPDATE
	testparams
SET
	"from" = CAST($from AS INTEGER)
WHERE
	testparams."from" = 1

