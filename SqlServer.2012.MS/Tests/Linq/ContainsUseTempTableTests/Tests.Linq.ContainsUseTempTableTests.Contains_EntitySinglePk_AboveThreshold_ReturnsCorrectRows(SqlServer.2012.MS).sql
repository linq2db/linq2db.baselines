-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_237f5c621640]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Tag]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

INSERT BULK [tempdb]..[#T_237f5c621640](Id, Name, Tag)

-- SqlServer.2012.MS SqlServer.2012

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
			[tempdb]..[#T_237f5c621640] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_237f5c621640]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_237f5c621640]

