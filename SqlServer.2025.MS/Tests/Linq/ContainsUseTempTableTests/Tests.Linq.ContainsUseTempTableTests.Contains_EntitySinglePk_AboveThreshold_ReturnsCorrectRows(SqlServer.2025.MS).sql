-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_c54e984dd2d5]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Tag]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

INSERT BULK [tempdb]..[#T_c54e984dd2d5](Id, Name, Tag)

-- SqlServer.2025.MS SqlServer.2025

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
			[tempdb]..[#T_c54e984dd2d5] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_c54e984dd2d5]

