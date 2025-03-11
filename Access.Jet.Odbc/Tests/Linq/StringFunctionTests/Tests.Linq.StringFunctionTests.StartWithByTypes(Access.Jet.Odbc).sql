﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @str Char(5) -- AnsiStringFixedLength
SET     @str = 'some%'
DECLARE @str NChar(5) -- StringFixedLength
SET     @str = 'some%'
DECLARE @str VarChar(5) -- AnsiString
SET     @str = 'some%'
DECLARE @str NVarChar(5) -- String
SET     @str = 'some%'

SELECT
	COUNT(*)
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE ? AND
	[t].[NCharColumn] LIKE ? AND
	[t].[VarCharColumn] LIKE ? AND
	[t].[NVarCharColumn] LIKE ?

