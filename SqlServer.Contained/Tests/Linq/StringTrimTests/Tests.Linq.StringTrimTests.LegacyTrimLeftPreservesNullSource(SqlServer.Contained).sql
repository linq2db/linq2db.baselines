-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @CharColumn Char -- AnsiStringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn NChar -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn VarChar(50) -- AnsiString
SET     @VarCharColumn = NULL
DECLARE @NVarCharColumn NVarChar(50) -- String
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

-- SqlServer.Contained SqlServer.2019

SELECT
	[t].[VarCharColumn]
FROM
	[StringTrimTable] [t]
WHERE
	[t].[Id] = 100

