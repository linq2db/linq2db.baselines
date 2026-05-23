-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_f534a72453dd]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Tag]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

INSERT BULK [tempdb]..[#T_f534a72453dd](Id, Name, Tag)

-- SqlServer.Contained.MS SqlServer.2019

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
			[tempdb]..[#T_f534a72453dd] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_f534a72453dd]

