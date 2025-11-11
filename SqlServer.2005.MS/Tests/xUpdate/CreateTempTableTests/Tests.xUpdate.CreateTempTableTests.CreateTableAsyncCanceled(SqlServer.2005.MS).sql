-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2005.MS SqlServer.2005

DROP TABLE [TempTable]

