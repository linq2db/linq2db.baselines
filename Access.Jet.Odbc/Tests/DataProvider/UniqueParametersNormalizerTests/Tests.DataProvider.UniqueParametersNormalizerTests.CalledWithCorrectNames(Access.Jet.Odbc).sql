BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [table1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [table1]
(
	[Id]     Int           NOT NULL,
	[Field1] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [table2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [table2]
(
	[Table1Id] Int           NOT NULL,
	[Field2]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [table3]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [table3]
(
	[Table1Id] Int           NOT NULL,
	[Field3]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @search NVarChar(5) -- String
SET     @search = 'test%'
DECLARE @search NVarChar(4) -- String
SET     @search = 'test'
DECLARE @search NVarChar(5) -- String
SET     @search = 'test%'

SELECT
	[row1].[Id]
FROM
	[table1] [row1]
		INNER JOIN [table2] [row2] ON ([row1].[Id] = [row2].[Table1Id])
WHERE
	[row2].[Field2] LIKE ?
UNION
SELECT
	[row1_1].[Id]
FROM
	[table1] [row1_1]
		INNER JOIN [table3] [row3] ON ([row1_1].[Id] = [row3].[Table1Id])
WHERE
	[row3].[Field3] = ?
UNION
SELECT
	[row1_2].[Id]
FROM
	[table1] [row1_2]
WHERE
	[row1_2].[Field1] LIKE ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DROP TABLE [table3]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DROP TABLE [table2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DROP TABLE [table1]

