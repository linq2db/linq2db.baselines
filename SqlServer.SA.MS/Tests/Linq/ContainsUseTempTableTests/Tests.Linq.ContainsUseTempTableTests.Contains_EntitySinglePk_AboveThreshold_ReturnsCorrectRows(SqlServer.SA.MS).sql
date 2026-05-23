-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_dc4f26dea9dc]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Tag]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

INSERT BULK [tempdb]..[#T_dc4f26dea9dc](Id, Name, Tag)

-- SqlServer.SA.MS SqlServer.2019

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
			[tempdb]..[#T_dc4f26dea9dc] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_dc4f26dea9dc]

