-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_973086534d82]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_973086534d82](item)

-- SqlServer.2012.MS SqlServer.2012

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
			[tempdb]..[#T_973086534d82] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_973086534d82]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_973086534d82]

