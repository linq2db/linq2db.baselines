-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_5b03b26a972c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_5b03b26a972c](item)

-- SqlServer.Contained SqlServer.2019

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
			[tempdb]..[#T_5b03b26a972c] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_5b03b26a972c] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_5b03b26a972c]

