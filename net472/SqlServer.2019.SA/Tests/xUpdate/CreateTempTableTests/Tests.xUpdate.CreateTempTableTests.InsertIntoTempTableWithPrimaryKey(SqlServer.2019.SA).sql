BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
INSERT BULK [#TableWithPrimaryKey](Key)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [#TableWithPrimaryKey]

