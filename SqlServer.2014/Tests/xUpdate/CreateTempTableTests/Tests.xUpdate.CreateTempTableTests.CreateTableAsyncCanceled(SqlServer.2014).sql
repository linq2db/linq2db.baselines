-- SqlServer.2014

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

-- SqlServer.2014

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2014

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2014

DROP TABLE [TempTable]

