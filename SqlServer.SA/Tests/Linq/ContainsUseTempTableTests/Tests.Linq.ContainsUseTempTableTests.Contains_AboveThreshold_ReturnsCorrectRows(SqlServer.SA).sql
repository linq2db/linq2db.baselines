-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_93fa0da94fb5]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_93fa0da94fb5](item)

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
			[tempdb]..[#T_93fa0da94fb5] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_93fa0da94fb5]

