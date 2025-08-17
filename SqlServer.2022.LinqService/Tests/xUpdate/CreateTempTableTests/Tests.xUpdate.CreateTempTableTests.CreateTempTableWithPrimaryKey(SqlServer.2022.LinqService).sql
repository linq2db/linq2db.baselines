BeforeExecute
-- SqlServer.2022 (asynchronously)

CREATE TABLE [tempdb]..[#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#TableWithPrimaryKey]

