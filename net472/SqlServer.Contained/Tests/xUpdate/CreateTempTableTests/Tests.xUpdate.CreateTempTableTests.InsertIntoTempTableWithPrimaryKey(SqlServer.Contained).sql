BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
INSERT BULK [#TableWithPrimaryKey](Key)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [#TableWithPrimaryKey]

