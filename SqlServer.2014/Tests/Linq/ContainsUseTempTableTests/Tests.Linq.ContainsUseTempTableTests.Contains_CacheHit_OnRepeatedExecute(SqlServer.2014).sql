-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_d96a42412ca3]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d96a42412ca3](item)

-- SqlServer.2014

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
			[tempdb]..[#T_d96a42412ca3] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_d96a42412ca3]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d96a42412ca3]

-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_d96a42412ca3]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d96a42412ca3](item)

-- SqlServer.2014

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
			[tempdb]..[#T_d96a42412ca3] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_d96a42412ca3]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d96a42412ca3]

