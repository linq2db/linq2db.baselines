-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_51786a975871]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_51786a975871](item)

-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_51786a975871] [t1]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_51786a975871]

