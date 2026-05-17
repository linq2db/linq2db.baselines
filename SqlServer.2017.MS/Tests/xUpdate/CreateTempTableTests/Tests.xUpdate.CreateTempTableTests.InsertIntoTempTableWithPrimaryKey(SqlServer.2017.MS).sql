-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

INSERT BULK [tempdb]..[#TableWithPrimaryKey2](Key)

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#TableWithPrimaryKey2]

