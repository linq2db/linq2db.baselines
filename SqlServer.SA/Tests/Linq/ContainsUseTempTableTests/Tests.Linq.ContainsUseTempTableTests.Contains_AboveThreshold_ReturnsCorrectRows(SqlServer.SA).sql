-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_63a4d6e2b5da]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_63a4d6e2b5da](item)

-- SqlServer.SA SqlServer.2019

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
			[tempdb]..[#T_63a4d6e2b5da] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_63a4d6e2b5da]

