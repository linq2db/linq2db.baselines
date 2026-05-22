-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_64b2a339e082]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_64b2a339e082](item)

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
			[tempdb]..[#T_64b2a339e082] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_64b2a339e082] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_64b2a339e082]

