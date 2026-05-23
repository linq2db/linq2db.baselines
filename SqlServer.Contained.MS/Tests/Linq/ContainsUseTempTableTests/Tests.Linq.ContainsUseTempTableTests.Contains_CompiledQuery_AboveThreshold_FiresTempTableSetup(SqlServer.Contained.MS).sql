-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_e65656ccadd2]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e65656ccadd2](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_e65656ccadd2] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_e65656ccadd2]

