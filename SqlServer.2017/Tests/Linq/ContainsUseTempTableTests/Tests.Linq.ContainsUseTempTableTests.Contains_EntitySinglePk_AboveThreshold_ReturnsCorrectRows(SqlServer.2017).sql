-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_76d09619045f]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Tag]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

INSERT BULK [tempdb]..[#T_76d09619045f](Id, Name, Tag)

-- SqlServer.2017

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
			[tempdb]..[#T_76d09619045f] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_76d09619045f]

