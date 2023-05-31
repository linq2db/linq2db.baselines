﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [StringTypesTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [StringTypesTable]
(
	[Id]             Int          NOT NULL,
	[CharColumn]     Char(50)         NULL,
	[NCharColumn]    NChar(50)        NULL,
	[VarCharColumn]  VarChar(50)      NULL,
	[NVarCharColumn] NVarChar(50)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CharColumn Char(10) -- AnsiStringFixedLength
SET     @CharColumn = 'someString'
DECLARE @NCharColumn NChar(10) -- StringFixedLength
SET     @NCharColumn = 'someString'
DECLARE @VarCharColumn VarChar(10) -- AnsiString
SET     @VarCharColumn = 'someString'
DECLARE @NVarCharColumn NVarChar(10) -- String
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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @str Char(5) -- AnsiStringFixedLength
SET     @str = 'some%'
DECLARE @str NChar(5) -- StringFixedLength
SET     @str = 'some%'
DECLARE @str VarChar(5) -- AnsiString
SET     @str = 'some%'
DECLARE @str NVarChar(5) -- String
SET     @str = 'some%'

SELECT
	[t].[Id],
	[t].[CharColumn],
	[t].[NCharColumn],
	[t].[VarCharColumn],
	[t].[NVarCharColumn]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE ? AND
	[t].[NCharColumn] LIKE ? AND
	[t].[VarCharColumn] LIKE ? AND
	[t].[NVarCharColumn] LIKE ?

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [StringTypesTable]

