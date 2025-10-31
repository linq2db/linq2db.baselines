-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [TestDataMSContained].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataMSContained].[dbo].[DropTableTest] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE [TestDataMSContained].[dbo].[DropTableTest]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataMSContained].[dbo].[DropTableTest] [t1]

