-- SqlServer.2016

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2016

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2016

INSERT INTO [tempdb]..[#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

-- SqlServer.2016

DROP TABLE [TempTable]

