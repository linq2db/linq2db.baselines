-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_f88d982c49f9]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_f88d982c49f9](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_f88d982c49f9] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_f88d982c49f9]

