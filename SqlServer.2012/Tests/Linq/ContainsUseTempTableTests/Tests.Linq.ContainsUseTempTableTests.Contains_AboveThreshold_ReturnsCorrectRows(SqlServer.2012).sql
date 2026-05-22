-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_c3314d6a2f86]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c3314d6a2f86](item)

-- SqlServer.2012

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
			[tempdb]..[#T_c3314d6a2f86] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_c3314d6a2f86]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_c3314d6a2f86]

