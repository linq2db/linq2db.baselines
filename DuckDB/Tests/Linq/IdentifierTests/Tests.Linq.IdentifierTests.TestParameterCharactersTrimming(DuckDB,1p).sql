-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

UPDATE
	testparams
SET
	"1p" = CAST($p AS INTEGER)
WHERE
	testparams."1p" = 1

