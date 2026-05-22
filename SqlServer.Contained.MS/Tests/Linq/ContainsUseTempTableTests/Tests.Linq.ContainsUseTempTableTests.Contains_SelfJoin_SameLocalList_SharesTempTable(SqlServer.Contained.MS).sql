-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_1bb5044ca08a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_1bb5044ca08a](item)

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
			[tempdb]..[#T_1bb5044ca08a] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_1bb5044ca08a] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_1bb5044ca08a]

