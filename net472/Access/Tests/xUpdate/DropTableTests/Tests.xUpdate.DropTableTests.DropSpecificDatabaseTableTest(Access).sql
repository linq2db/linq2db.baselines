BeforeExecute
-- Access AccessOleDb

DROP TABLE [DropTableTest]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [Database\TestData].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ID]
FROM
	[Database\TestData].[DropTableTest] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Database\TestData].[DropTableTest]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ID]
FROM
	[Database\TestData].[DropTableTest] [t1]

