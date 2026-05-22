-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_87a99d9e3250]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_87a99d9e3250](item)

-- SqlServer.2012

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
			[tempdb]..[#T_87a99d9e3250] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_87a99d9e3250] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_87a99d9e3250]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_87a99d9e3250]

