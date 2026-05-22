-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_b784f22cd308]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_b784f22cd308](item)

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
			[tempdb]..[#T_b784f22cd308] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_b784f22cd308]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_b784f22cd308]

-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_b784f22cd308]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_b784f22cd308](item)

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
			[tempdb]..[#T_b784f22cd308] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_b784f22cd308]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_b784f22cd308]

