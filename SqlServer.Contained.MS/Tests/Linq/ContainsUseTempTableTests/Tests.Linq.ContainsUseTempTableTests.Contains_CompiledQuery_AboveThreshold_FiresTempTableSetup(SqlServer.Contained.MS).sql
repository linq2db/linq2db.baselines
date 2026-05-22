-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_a4bfba672b6b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a4bfba672b6b](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_a4bfba672b6b] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_a4bfba672b6b]

