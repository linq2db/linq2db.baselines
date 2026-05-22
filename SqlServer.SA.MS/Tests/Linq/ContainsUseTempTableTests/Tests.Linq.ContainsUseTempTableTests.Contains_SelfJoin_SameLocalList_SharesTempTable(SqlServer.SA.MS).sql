-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_cb42963f8505]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cb42963f8505](item)

-- SqlServer.SA.MS SqlServer.2019

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
			[tempdb]..[#T_cb42963f8505] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_cb42963f8505] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cb42963f8505]

