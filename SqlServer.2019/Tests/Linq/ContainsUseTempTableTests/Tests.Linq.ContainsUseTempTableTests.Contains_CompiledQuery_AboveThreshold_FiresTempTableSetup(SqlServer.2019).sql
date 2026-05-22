-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_982e91bb8200]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_982e91bb8200](item)

-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_982e91bb8200] [t1]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_982e91bb8200]

