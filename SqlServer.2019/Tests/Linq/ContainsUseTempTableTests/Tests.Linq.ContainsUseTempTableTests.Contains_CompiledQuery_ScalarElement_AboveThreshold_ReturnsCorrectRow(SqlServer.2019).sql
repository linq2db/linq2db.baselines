-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_cef09b2056d6]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cef09b2056d6](item)

-- SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_cef09b2056d6] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cef09b2056d6]

