-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_abaeb706b19d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_abaeb706b19d](item)

-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_abaeb706b19d] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_abaeb706b19d]

