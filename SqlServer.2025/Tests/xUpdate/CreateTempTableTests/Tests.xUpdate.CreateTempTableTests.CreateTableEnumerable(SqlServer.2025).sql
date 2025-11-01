-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2025 SqlServer.2022

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

INSERT BULK [TempTable](ID)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

