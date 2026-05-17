-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @CharColumn Char -- AnsiStringFixedLength
SET     @CharColumn = NULL
DECLARE @NCharColumn NChar -- StringFixedLength
SET     @NCharColumn = NULL
DECLARE @VarCharColumn VarChar -- AnsiString
SET     @VarCharColumn = NULL
DECLARE @NVarCharColumn NVarChar -- String
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
	?,
	?,
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[VarCharColumn]
FROM
	[StringTrimTable] [t]
WHERE
	[t].[Id] = 100

