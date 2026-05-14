-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @CharColumn Char -- AnsiStringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn UniChar -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn VarChar -- AnsiString
SET     @VarCharColumn = NULL
DECLARE @NVarCharColumn UniVarChar -- String
SET     @NVarCharColumn = NULL

INSERT INTO [StringTrimTable]
(
	[Id],
	[CharColumn],
	[NCharColumn],
	[VarCharColumn],
	[NVarCharColumn]
)
VALUES
(
	@Id,
	@CharColumn,
	@NCharColumn,
	@VarCharColumn,
	@NVarCharColumn
)

-- Sybase.Managed Sybase

SELECT
	[t].[VarCharColumn]
FROM
	[StringTrimTable] [t]
WHERE
	[t].[Id] = 100

