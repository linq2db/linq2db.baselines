-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#TableWithPrimaryKey2]
(
	[Key]
)
SELECT 1

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#TableWithPrimaryKey2]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithPrimaryKey2]

