-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_09ee447a0023]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_09ee447a0023](item)

-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_09ee447a0023] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_09ee447a0023]

