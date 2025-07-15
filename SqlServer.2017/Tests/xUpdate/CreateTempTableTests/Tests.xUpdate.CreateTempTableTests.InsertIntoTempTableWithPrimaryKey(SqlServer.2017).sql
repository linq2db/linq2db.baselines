BeforeExecute
-- SqlServer.2017

CREATE TABLE [tempdb]..[#TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
INSERT BULK [tempdb]..[#TableWithPrimaryKey2](Key)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#TableWithPrimaryKey2]

