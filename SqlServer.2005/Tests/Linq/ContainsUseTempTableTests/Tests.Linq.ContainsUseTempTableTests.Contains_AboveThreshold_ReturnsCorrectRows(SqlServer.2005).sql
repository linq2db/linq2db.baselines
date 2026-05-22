-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_d62a20ee5d48]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d62a20ee5d48](item)

-- SqlServer.2005

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
			[tempdb]..[#T_d62a20ee5d48] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_d62a20ee5d48]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d62a20ee5d48]

