-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_9a1c4055a5ea]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9a1c4055a5ea](item)

-- SqlServer.2016

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
			[tempdb]..[#T_9a1c4055a5ea] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_9a1c4055a5ea] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_9a1c4055a5ea]

