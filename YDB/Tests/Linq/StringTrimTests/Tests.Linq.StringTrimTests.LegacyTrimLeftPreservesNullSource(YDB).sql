-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 100
DECLARE $CharColumn Text -- AnsiStringFixedLength
SET     $CharColumn = NULL
DECLARE $NCharColumn Text -- StringFixedLength
SET     $NCharColumn = NULL
DECLARE $VarCharColumn Text -- AnsiString
SET     $VarCharColumn = NULL
DECLARE $NVarCharColumn Text -- String
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

-- YDB Ydb

SELECT
	CASE
		WHEN t.VarCharColumn IS NOT NULL THEN CAST(Re2::Replace('^[.+]+'u)(CAST(t.VarCharColumn AS String?), '') AS Utf8?)
		ELSE NULL
	END as c1
FROM
	StringTrimTable t
WHERE
	t.Id = 100

