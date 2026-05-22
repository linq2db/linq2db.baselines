-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_7e206d48536a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7e206d48536a](item)

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
			[tempdb]..[#T_7e206d48536a] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_7e206d48536a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_7e206d48536a]

