-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_75a43f4b6b1b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_75a43f4b6b1b](item)

-- SqlServer.2005

SELECT
	[a].[Id],
	[b].[Id]
FROM
	[ContainsTempTableTestRow] [a],
	[ContainsTempTableTestRow] [b]
WHERE
	[a].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_75a43f4b6b1b] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_75a43f4b6b1b] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_75a43f4b6b1b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_75a43f4b6b1b]

