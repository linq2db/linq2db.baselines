-- SqlServer.2008

CREATE TABLE [tempdb]..[#TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

INSERT BULK [tempdb]..[#TableWithPrimaryKey2](Key)

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#TableWithPrimaryKey2]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithPrimaryKey2]

