-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_7c7c88d2f9f6]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Tag]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

INSERT BULK [tempdb]..[#T_7c7c88d2f9f6](Id, Name, Tag)

-- SqlServer.2008

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
			[tempdb]..[#T_7c7c88d2f9f6] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_7c7c88d2f9f6]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_7c7c88d2f9f6]

