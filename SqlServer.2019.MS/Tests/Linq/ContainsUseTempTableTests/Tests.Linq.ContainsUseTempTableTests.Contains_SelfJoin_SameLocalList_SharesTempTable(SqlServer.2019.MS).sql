-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_fae000b0f21e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_fae000b0f21e](item)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[a].[Id],
	[b].[Id]
FROM
	[ContainsTempTableTestRow] [a],
	[ContainsTempTableTestRow] [b]
WHERE
	[a].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_fae000b0f21e] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_fae000b0f21e] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_fae000b0f21e]

