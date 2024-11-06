BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

