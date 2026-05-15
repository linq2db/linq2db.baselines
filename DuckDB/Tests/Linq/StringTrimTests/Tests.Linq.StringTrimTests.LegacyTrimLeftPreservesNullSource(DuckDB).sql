-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 100
DECLARE $CharColumn Char -- AnsiStringFixedLength
SET     $CharColumn = NULL
DECLARE $NCharColumn NChar -- StringFixedLength
SET     $NCharColumn = NULL
DECLARE $VarCharColumn VarChar -- AnsiString
SET     $VarCharColumn = NULL
DECLARE $NVarCharColumn NVarChar -- String
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
		WHEN t.VarCharColumn IS NOT NULL THEN LTRIM(t.VarCharColumn, '.+')
		ELSE NULL
	END
FROM
	StringTrimTable t
WHERE
	t.Id = 100

