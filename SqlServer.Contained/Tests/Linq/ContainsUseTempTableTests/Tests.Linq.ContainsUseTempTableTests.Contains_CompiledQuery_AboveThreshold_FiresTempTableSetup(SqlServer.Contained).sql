-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_3ca2d69bfa65]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_3ca2d69bfa65](item)

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_3ca2d69bfa65] [t1]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_3ca2d69bfa65]

