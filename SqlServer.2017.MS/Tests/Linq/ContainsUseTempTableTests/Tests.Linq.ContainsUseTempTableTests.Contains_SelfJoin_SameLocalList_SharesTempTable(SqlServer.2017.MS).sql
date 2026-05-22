-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_496cd25beaee]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_496cd25beaee](item)

-- SqlServer.2017.MS SqlServer.2017

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
			[tempdb]..[#T_496cd25beaee] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_496cd25beaee] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_496cd25beaee]

