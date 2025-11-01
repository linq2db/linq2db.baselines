-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [TestDataMS].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[TestDataMS].[dbo].[DropTableTest] [t1]

-- SqlServer.2012.MS SqlServer.2012

DROP TABLE [TestDataMS].[dbo].[DropTableTest]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[TestDataMS].[dbo].[DropTableTest] [t1]

