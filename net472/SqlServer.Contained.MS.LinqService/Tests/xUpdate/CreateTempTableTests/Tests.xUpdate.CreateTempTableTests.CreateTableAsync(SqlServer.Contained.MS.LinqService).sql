BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

