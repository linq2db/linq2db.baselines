-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_ac42f2160c65]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ac42f2160c65](item)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_ac42f2160c65] [t1]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_ac42f2160c65]

