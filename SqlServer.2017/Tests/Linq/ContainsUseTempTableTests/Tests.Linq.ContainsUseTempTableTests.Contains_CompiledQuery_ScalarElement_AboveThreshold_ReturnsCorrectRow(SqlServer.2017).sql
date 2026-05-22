-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_e07247c3fdd7]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e07247c3fdd7](item)

-- SqlServer.2017

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_e07247c3fdd7] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_e07247c3fdd7]

