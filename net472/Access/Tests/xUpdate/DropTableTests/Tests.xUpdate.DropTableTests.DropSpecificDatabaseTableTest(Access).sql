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

DROP TABLE [Database\TestData].[DropTableTest]

