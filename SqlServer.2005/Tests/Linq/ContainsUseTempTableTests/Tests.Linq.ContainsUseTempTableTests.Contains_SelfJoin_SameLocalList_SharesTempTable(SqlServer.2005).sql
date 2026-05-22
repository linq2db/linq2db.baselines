-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_e744a3d7f8df]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e744a3d7f8df](item)

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
			[tempdb]..[#T_e744a3d7f8df] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_e744a3d7f8df] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_e744a3d7f8df]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_e744a3d7f8df]

