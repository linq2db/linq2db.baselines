-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 100
DECLARE $CharColumn Char(50) -- AnsiStringFixedLength
SET     $CharColumn = NULL
DECLARE $NCharColumn NChar(50) -- StringFixedLength
SET     $NCharColumn = NULL
DECLARE $VarCharColumn VarChar(50) -- AnsiString
SET     $VarCharColumn = NULL
DECLARE $NVarCharColumn NVarChar(50) -- String
SET     $NVarCharColumn = NULL

INSERT INTO StringTrimTable
(
	Id,
	CharColumn,
	NCharColumn,
	VarCharColumn,
	NVarCharColumn
)
VALUES
(
	$Id,
	$CharColumn,
	$NCharColumn,
	$VarCharColumn,
	$NVarCharColumn
)

-- DuckDB

SELECT
	CASE
		WHEN t.VarCharColumn IS NOT NULL THEN RTRIM(t.VarCharColumn, '.+')
		ELSE NULL
	END
FROM
	StringTrimTable t
WHERE
	t.Id = 100

