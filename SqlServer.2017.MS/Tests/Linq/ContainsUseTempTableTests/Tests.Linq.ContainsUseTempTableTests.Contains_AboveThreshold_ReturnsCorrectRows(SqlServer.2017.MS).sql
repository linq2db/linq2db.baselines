-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_536d2f0883b4]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_536d2f0883b4](item)

-- SqlServer.2017.MS SqlServer.2017

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
			[tempdb]..[#T_536d2f0883b4] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_536d2f0883b4]

