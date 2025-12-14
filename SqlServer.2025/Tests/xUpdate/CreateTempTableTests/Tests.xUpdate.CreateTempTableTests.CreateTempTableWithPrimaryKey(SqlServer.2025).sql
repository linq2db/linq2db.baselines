-- SqlServer.2025

CREATE TABLE [tempdb]..[#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#TableWithPrimaryKey]

