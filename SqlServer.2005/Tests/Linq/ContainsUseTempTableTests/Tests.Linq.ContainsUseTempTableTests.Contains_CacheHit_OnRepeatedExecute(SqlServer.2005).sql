-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_8eeb17f58242]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_8eeb17f58242](item)

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
			[tempdb]..[#T_8eeb17f58242] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_8eeb17f58242]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_8eeb17f58242]

-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_8eeb17f58242]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_8eeb17f58242](item)

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
			[tempdb]..[#T_8eeb17f58242] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_8eeb17f58242]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_8eeb17f58242]

