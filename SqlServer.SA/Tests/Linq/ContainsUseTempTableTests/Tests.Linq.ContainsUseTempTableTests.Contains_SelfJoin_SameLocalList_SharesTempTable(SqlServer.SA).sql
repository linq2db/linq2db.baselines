-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_0eac4a5e78cc]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_0eac4a5e78cc](item)

-- SqlServer.SA SqlServer.2019

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
			[tempdb]..[#T_0eac4a5e78cc] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_0eac4a5e78cc] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_0eac4a5e78cc]

