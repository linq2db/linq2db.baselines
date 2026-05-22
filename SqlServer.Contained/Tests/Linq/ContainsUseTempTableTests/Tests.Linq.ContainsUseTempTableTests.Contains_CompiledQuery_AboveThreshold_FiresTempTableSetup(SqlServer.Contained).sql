-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_883678115523]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_883678115523](item)

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_883678115523] [t1]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_883678115523]

