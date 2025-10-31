-- SqlServer.2012

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

-- SqlServer.2012

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2012

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL
)

-- SqlServer.2012

DROP TABLE [TempTable]

