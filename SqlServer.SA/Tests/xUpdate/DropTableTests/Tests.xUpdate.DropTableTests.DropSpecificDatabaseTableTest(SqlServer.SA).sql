BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [TestDataSA].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataSA].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE [TestDataSA].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataSA].[dbo].[DropTableTest] [t1]

