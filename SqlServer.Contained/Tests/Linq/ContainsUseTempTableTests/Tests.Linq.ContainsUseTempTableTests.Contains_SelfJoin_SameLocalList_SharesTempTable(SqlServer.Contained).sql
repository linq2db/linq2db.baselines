-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_8f939524910d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_8f939524910d](item)

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
			[tempdb]..[#T_8f939524910d] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_8f939524910d] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_8f939524910d]

