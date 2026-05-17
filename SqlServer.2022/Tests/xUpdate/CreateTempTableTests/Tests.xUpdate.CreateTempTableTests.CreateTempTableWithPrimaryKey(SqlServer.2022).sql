-- SqlServer.2022

CREATE TABLE [tempdb]..[#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TableWithPrimaryKey]

