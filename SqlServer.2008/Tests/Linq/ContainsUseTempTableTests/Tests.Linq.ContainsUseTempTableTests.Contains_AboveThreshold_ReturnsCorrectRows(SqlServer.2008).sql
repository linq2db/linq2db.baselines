-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_99d334406bff]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_99d334406bff](item)

-- SqlServer.2008

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
			[tempdb]..[#T_99d334406bff] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_99d334406bff]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_99d334406bff]

