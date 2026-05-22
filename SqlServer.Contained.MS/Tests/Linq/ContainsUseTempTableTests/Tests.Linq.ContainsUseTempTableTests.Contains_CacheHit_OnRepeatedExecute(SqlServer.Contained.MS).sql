-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_7614c57a971e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7614c57a971e](item)

-- SqlServer.Contained.MS SqlServer.2019

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
			[tempdb]..[#T_7614c57a971e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_7614c57a971e]

-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_7614c57a971e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7614c57a971e](item)

-- SqlServer.Contained.MS SqlServer.2019

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
			[tempdb]..[#T_7614c57a971e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_7614c57a971e]

