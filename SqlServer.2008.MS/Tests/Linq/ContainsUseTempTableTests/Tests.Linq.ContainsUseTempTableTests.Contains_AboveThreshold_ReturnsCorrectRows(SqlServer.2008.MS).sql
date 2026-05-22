-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_1e6e65d1577b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_1e6e65d1577b](item)

-- SqlServer.2008.MS SqlServer.2008

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
			[tempdb]..[#T_1e6e65d1577b] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_1e6e65d1577b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_1e6e65d1577b]

