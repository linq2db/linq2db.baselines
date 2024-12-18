﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [table1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [table1]
(
	[Id]     Int           NOT NULL,
	[Field1] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [table2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [table2]
(
	[Table1Id] Int           NOT NULL,
	[Field2]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [table3]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [table3]
(
	[Table1Id] Int           NOT NULL,
	[Field3]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @search VarWChar(5) -- String
SET     @search = 'test%'
DECLARE @search_1 VarWChar(4) -- String
SET     @search_1 = 'test'
DECLARE @search_2 VarWChar(5) -- String
SET     @search_2 = 'test%'

SELECT
	[row1].[Id]
FROM
	[table1] [row1]
		INNER JOIN [table2] [row2] ON ([row1].[Id] = [row2].[Table1Id])
WHERE
	[row2].[Field2] LIKE @search
UNION
SELECT
	[row1_1].[Id]
FROM
	[table1] [row1_1]
		INNER JOIN [table3] [row3] ON ([row1_1].[Id] = [row3].[Table1Id])
WHERE
	[row3].[Field3] = @search_1 AND [row3].[Field3] IS NOT NULL
UNION
SELECT
	[row1_2].[Id]
FROM
	[table1] [row1_2]
WHERE
	[row1_2].[Field1] LIKE @search_2

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DROP TABLE [table3]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DROP TABLE [table2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DROP TABLE [table1]

