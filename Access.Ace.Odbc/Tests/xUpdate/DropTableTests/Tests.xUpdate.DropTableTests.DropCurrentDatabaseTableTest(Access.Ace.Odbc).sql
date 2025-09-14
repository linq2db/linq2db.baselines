BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

