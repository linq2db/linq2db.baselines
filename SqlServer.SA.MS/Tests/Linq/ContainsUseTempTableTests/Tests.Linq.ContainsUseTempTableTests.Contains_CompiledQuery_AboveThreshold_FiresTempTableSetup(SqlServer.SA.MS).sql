-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_4e3073366939]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_4e3073366939](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_4e3073366939] [t1]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_4e3073366939]

