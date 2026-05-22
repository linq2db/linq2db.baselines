-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_3cc2317ea160]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_3cc2317ea160](item)

-- SqlServer.2005

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
			[tempdb]..[#T_3cc2317ea160] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_3cc2317ea160] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_3cc2317ea160]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_3cc2317ea160]

