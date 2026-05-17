-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 100
DECLARE @CharColumn Char -- StringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn Char -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn VarChar -- String
SET     @VarCharColumn = NULL
DECLARE @NVarCharColumn VarChar -- String
SET     @NVarCharColumn = NULL

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
	@Id,
	@CharColumn,
	@NCharColumn,
	@VarCharColumn,
	@NVarCharColumn
)

-- Informix.DB2 Informix

SELECT
	CASE
		WHEN t.VarCharColumn IS NOT NULL THEN RTRIM(t.VarCharColumn, '.+')
		ELSE NULL
	END
FROM
	StringTrimTable t
WHERE
	t.Id = 100

