-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_a0e1a200bc17]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a0e1a200bc17](item)

-- SqlServer.SA.MS SqlServer.2019

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
			[tempdb]..[#T_a0e1a200bc17] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_a0e1a200bc17]

