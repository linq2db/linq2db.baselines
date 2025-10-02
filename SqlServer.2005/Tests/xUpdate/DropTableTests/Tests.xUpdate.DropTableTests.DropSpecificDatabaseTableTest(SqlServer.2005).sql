BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2005

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [TestData].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2005

DROP TABLE [TestData].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

