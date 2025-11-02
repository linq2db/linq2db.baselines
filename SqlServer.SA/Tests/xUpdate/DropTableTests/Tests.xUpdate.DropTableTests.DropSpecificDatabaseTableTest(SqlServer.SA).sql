-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.SA SqlServer.2019

INSERT INTO [TestDataSA].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataSA].[dbo].[DropTableTest] [t1]

-- SqlServer.SA SqlServer.2019

DROP TABLE [TestDataSA].[dbo].[DropTableTest]

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataSA].[dbo].[DropTableTest] [t1]

