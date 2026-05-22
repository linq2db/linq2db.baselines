-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_3a63e6edcc0b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_3a63e6edcc0b](item)

-- SqlServer.2014.MS SqlServer.2014

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
			[tempdb]..[#T_3a63e6edcc0b] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_3a63e6edcc0b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_3a63e6edcc0b]

