BeforeExecute
-- SqlServer.2016

CREATE TABLE [#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
INSERT BULK [#TableWithPrimaryKey](Key)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [#TableWithPrimaryKey]

