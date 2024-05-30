BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#TableWithPrimaryKey]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithPrimaryKey]

