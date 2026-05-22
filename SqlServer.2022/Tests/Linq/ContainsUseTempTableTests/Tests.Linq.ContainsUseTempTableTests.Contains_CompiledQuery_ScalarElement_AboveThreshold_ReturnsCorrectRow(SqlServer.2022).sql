-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_811e0b1435cd]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_811e0b1435cd](item)

-- SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_811e0b1435cd] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_811e0b1435cd]

