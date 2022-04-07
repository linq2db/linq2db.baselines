BeforeExecute
-- SqlServer.2017

CREATE TABLE [#TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
INSERT BULK [#TableWithPrimaryKey2](Key)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [#TableWithPrimaryKey2]

