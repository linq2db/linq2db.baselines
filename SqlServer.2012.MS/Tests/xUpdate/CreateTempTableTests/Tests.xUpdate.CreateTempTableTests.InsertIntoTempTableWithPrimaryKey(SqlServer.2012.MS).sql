-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

INSERT BULK [tempdb]..[#TableWithPrimaryKey2](Key)

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#TableWithPrimaryKey2]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithPrimaryKey2]

