-- SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.2019

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.2019

INSERT INTO [TestData].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

-- SqlServer.2019

DROP TABLE [TestData].[dbo].[DropTableTest]

-- SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

