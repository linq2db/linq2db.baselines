-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_18e2c2d66974]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_18e2c2d66974](item)

-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_18e2c2d66974] [t1]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_18e2c2d66974]

