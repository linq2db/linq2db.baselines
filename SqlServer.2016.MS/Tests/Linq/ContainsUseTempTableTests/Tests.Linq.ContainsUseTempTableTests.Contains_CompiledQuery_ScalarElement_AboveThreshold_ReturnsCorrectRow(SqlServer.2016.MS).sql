-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_e0d30cc88ac5]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e0d30cc88ac5](item)

-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_e0d30cc88ac5] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_e0d30cc88ac5]

