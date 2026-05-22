-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_1d3ac6d564e0]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_1d3ac6d564e0](item)

-- SqlServer.2016.MS SqlServer.2016

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
			[tempdb]..[#T_1d3ac6d564e0] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_1d3ac6d564e0]

