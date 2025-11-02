-- SqlServer.2014

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

-- SqlServer.2014

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2014

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2014

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.2014

INSERT INTO [TestData].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

-- SqlServer.2014

DROP TABLE [TestData].[dbo].[DropTableTest]

-- SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

