-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_28d5380021c7]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_28d5380021c7](item)

-- SqlServer.2008

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
			[tempdb]..[#T_28d5380021c7] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_28d5380021c7]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_28d5380021c7]

-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_28d5380021c7]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_28d5380021c7](item)

-- SqlServer.2008

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
			[tempdb]..[#T_28d5380021c7] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_28d5380021c7]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_28d5380021c7]

