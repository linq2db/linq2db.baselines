-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_b6a4af9c85c8]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_b6a4af9c85c8](item)

-- SqlServer.Contained.MS SqlServer.2019

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
			[tempdb]..[#T_b6a4af9c85c8] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_b6a4af9c85c8] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_b6a4af9c85c8]

