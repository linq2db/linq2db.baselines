-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_9785b8343aff]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Tag]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

INSERT BULK [tempdb]..[#T_9785b8343aff](Id, Name, Tag)

-- SqlServer.2012

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
			[tempdb]..[#T_9785b8343aff] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_9785b8343aff]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_9785b8343aff]

