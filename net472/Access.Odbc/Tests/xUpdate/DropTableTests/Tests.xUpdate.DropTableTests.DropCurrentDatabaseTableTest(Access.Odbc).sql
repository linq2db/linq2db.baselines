BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [DropTableTest]
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
	[DropTableTest] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t1].[ID]
FROM
	[DropTableTest] [t1]

