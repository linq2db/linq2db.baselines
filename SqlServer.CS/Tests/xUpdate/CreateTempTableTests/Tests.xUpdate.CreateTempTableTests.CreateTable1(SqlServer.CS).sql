-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [TempTable]

-- SqlServer.CS SqlServer.2025
IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.CS SqlServer.2025
INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [TempTable]

