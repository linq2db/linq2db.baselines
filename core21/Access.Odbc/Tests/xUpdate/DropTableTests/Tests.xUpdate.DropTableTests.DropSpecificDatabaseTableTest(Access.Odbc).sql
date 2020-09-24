BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Database\TestData].[DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [Database\TestData].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData].[DropTableTest] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Database\TestData].[DropTableTest]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData].[DropTableTest] [t1]

