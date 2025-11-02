-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [TestDataMSSA].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataMSSA].[dbo].[DropTableTest] [t1]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE [TestDataMSSA].[dbo].[DropTableTest]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataMSSA].[dbo].[DropTableTest] [t1]

