-- SqlServer.2016

CREATE TABLE [tempdb]..[#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#TableWithPrimaryKey]

