-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_f8f6d261aac4]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_f8f6d261aac4](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_f8f6d261aac4] [t1]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_f8f6d261aac4]

