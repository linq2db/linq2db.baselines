-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_bdc80aa00234]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_bdc80aa00234](item)

-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_bdc80aa00234] [t1]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_bdc80aa00234]

