-- SqlServer.2022

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.2022

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2022

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2022

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2022

INSERT INTO [TestData].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

-- SqlServer.2022

DROP TABLE [TestData].[dbo].[DropTableTest]

-- SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

