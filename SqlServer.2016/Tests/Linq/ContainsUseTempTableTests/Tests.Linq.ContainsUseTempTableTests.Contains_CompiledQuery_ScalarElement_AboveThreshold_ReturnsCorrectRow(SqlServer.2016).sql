-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_e1316dc4bf1c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e1316dc4bf1c](item)

-- SqlServer.2016

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_e1316dc4bf1c] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_e1316dc4bf1c]

