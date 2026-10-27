-- SqlServer.Contained SqlServer.2025
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.Contained SqlServer.2025
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.Contained SqlServer.2025
DROP TABLE IF EXISTS [Issue681Table2]

-- SqlServer.Contained SqlServer.2025
CREATE TABLE [TestDataContained].[dbo].[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.Contained SqlServer.2025
DROP TABLE IF EXISTS [Issue681Table2]

