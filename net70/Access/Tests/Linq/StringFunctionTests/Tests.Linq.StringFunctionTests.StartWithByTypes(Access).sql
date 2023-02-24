BeforeExecute
-- Access AccessOleDb

DROP TABLE [StringTypesTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [StringTypesTable]
(
	[Id]             Int          NOT NULL,
	[CharColumn]     Char(50)         NULL,
	[NCharColumn]    NChar(50)        NULL,
	[VarCharColumn]  VarChar(50)      NULL,
	[NVarCharColumn] NVarChar(50)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @CharColumn Char(10) -- AnsiStringFixedLength
SET     @CharColumn = 'someString'
DECLARE @NCharColumn WChar(10) -- StringFixedLength
SET     @NCharColumn = 'someString'
DECLARE @VarCharColumn VarChar(10) -- AnsiString
SET     @VarCharColumn = 'someString'
DECLARE @NVarCharColumn VarWChar(10) -- String
SET     @NVarCharColumn = 'someString'

INSERT INTO [StringTypesTable]
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

BeforeExecute
-- Access AccessOleDb
DECLARE @str_4 Char(5) -- AnsiStringFixedLength
SET     @str_4 = 'some%'
DECLARE @str_5 WChar(5) -- StringFixedLength
SET     @str_5 = 'some%'
DECLARE @str_6 VarChar(5) -- AnsiString
SET     @str_6 = 'some%'
DECLARE @str_7 VarWChar(5) -- String
SET     @str_7 = 'some%'

SELECT
	[t].[Id],
	[t].[CharColumn],
	[t].[NCharColumn],
	[t].[VarCharColumn],
	[t].[NVarCharColumn]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE @str_4 AND
	[t].[NCharColumn] LIKE @str_5 AND
	[t].[VarCharColumn] LIKE @str_6 AND
	[t].[NVarCharColumn] LIKE @str_7

BeforeExecute
-- Access AccessOleDb

DROP TABLE [StringTypesTable]

