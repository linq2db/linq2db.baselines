-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.CS SqlServer.2025
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS SqlServer.2025
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS SqlServer.2025
CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [TestDataCS].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ID]
FROM
	[TestDataCS].[dbo].[DropTableTest] [t1]

-- SqlServer.CS SqlServer.2025
DROP TABLE [TestDataCS].[dbo].[DropTableTest]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ID]
FROM
	[TestDataCS].[dbo].[DropTableTest] [t1]

