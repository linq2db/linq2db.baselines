-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_beac85d69465]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_beac85d69465](item)

-- SqlServer.2012

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
			[tempdb]..[#T_beac85d69465] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_beac85d69465]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_beac85d69465]

-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_beac85d69465]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_beac85d69465](item)

-- SqlServer.2012

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
			[tempdb]..[#T_beac85d69465] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_beac85d69465]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_beac85d69465]

