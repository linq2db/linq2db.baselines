-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_ae944aa394ea]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ae944aa394ea](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_ae944aa394ea] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_ae944aa394ea]

