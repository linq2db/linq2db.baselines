-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_60134d69647c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_60134d69647c](item)

-- SqlServer.2017

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_60134d69647c] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_60134d69647c]

