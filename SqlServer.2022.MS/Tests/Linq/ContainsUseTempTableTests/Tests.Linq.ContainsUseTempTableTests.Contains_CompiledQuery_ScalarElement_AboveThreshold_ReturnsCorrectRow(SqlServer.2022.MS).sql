-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_50acf6487507]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_50acf6487507](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_50acf6487507] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_50acf6487507]

