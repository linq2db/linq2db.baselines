-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE [tempdb]..[#TempTable]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

