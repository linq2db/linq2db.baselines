-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_ad317521a07f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ad317521a07f](item)

-- SqlServer.2005

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
			[tempdb]..[#T_ad317521a07f] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_ad317521a07f]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_ad317521a07f]

-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_ad317521a07f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ad317521a07f](item)

-- SqlServer.2005

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
			[tempdb]..[#T_ad317521a07f] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_ad317521a07f]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_ad317521a07f]

