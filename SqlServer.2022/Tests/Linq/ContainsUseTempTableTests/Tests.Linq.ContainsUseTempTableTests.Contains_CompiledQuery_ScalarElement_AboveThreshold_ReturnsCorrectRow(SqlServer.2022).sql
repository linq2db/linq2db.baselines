-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_e98b55edf2e6]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e98b55edf2e6](item)

-- SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_e98b55edf2e6] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_e98b55edf2e6]

