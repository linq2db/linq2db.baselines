-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_6a3932ce77d4]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_6a3932ce77d4](item)

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_6a3932ce77d4] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_6a3932ce77d4]

