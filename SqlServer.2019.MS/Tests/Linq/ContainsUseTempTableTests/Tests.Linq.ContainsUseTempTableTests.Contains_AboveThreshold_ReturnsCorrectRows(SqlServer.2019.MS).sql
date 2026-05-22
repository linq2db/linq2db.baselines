-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_08ad04a33a4d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_08ad04a33a4d](item)

-- SqlServer.2019.MS SqlServer.2019

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
			[tempdb]..[#T_08ad04a33a4d] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_08ad04a33a4d]

