BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

