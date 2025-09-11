BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [TestDataMS].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[TestDataMS].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DROP TABLE [TestDataMS].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[TestDataMS].[dbo].[DropTableTest] [t1]

