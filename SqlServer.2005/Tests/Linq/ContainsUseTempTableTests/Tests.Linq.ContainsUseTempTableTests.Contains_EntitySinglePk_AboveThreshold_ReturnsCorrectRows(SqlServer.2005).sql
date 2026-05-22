-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_40ce8b0650f8]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Tag]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

INSERT BULK [tempdb]..[#T_40ce8b0650f8](Id, Name, Tag)

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[tempdb]..[#T_40ce8b0650f8] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_40ce8b0650f8]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_40ce8b0650f8]

