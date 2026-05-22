-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_8f32b8ba4cd4]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_8f32b8ba4cd4](item)

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
			[tempdb]..[#T_8f32b8ba4cd4] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_8f32b8ba4cd4] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_8f32b8ba4cd4]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_8f32b8ba4cd4]

