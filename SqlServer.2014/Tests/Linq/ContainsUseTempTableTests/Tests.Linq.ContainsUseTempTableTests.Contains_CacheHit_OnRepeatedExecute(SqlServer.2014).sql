-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_5f5dc0793a73]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_5f5dc0793a73](item)

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
			[tempdb]..[#T_5f5dc0793a73] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_5f5dc0793a73]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_5f5dc0793a73]

-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_5f5dc0793a73]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_5f5dc0793a73](item)

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
			[tempdb]..[#T_5f5dc0793a73] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_5f5dc0793a73]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_5f5dc0793a73]

