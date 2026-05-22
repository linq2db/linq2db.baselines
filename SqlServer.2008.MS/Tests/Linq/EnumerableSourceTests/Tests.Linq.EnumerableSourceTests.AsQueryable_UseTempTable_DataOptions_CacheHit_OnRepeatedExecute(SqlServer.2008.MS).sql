-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_3ab1a0660dc6]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_3ab1a0660dc6](Id, Data)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_3ab1a0660dc6] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_3ab1a0660dc6]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_3ab1a0660dc6]

-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_3ab1a0660dc6]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_3ab1a0660dc6](Id, Data)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_3ab1a0660dc6] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_3ab1a0660dc6]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_3ab1a0660dc6]

