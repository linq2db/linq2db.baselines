-- SqlServer.CS.MS SqlServer.2025
DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS.MS SqlServer.2025
CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.CS.MS SqlServer.2025
INSERT INTO [TestDataMSCS].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ID]
FROM
	[TestDataMSCS].[dbo].[DropTableTest] [t1]

-- SqlServer.CS.MS SqlServer.2025
DROP TABLE [TestDataMSCS].[dbo].[DropTableTest]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ID]
FROM
	[TestDataMSCS].[dbo].[DropTableTest] [t1]

