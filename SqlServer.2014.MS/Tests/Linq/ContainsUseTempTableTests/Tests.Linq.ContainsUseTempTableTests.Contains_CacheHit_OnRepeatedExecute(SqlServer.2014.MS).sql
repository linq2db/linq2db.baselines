-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_a8af0101ffed]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a8af0101ffed](item)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	[r].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_a8af0101ffed] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_a8af0101ffed]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_a8af0101ffed]

-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_a8af0101ffed]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a8af0101ffed](item)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	[r].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_a8af0101ffed] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_a8af0101ffed]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_a8af0101ffed]

