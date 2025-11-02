-- SqlServer.2019

CREATE TABLE [tempdb]..[#TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

INSERT BULK [tempdb]..[#TableWithPrimaryKey2](Key)

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TableWithPrimaryKey2]

