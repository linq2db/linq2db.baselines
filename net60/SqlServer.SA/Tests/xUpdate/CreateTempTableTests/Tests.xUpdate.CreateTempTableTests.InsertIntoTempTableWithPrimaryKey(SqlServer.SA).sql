BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
INSERT BULK [#TableWithPrimaryKey](Key)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [#TableWithPrimaryKey]

