-- DuckDB
DECLARE $Uid Binary(16)
SET     $Uid = '\x3D\x66\x7B\xBC\xDE\x0F\x27\x43\x8F\x92\x5D\x8C\xC3\xA1\x1D\x11'::BLOB
DECLARE $Id  -- Int64
SET     $Id = 0

UPDATE
	Issue3060Table
SET
	"Uid" = CAST($Uid AS BLOB)
WHERE
	Issue3060Table.Id = CAST($Id AS BIGINT)

