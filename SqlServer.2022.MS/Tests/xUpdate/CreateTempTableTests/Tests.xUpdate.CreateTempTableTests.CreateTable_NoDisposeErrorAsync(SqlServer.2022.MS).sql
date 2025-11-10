-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TempTable]

-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE [tempdb]..[#TempTable]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

