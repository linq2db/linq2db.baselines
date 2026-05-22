-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_aac2586cf91c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_aac2586cf91c](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_aac2586cf91c] [t1]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_aac2586cf91c]

