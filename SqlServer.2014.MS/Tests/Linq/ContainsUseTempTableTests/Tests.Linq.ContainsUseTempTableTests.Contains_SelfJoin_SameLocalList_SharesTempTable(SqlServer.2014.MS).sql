-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_c69fbf0bdbff]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c69fbf0bdbff](item)

-- SqlServer.2014.MS SqlServer.2014

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
			[tempdb]..[#T_c69fbf0bdbff] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_c69fbf0bdbff] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_c69fbf0bdbff]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_c69fbf0bdbff]

