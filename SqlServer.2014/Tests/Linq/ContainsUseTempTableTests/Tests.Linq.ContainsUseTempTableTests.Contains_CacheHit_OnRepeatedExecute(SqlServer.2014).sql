-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_d03a166f9b6e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d03a166f9b6e](item)

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
			[tempdb]..[#T_d03a166f9b6e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_d03a166f9b6e]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d03a166f9b6e]

-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_d03a166f9b6e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d03a166f9b6e](item)

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
			[tempdb]..[#T_d03a166f9b6e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_d03a166f9b6e]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d03a166f9b6e]

