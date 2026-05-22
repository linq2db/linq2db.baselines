-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_d7172e4a685c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d7172e4a685c](item)

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_d7172e4a685c] [t1]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_d7172e4a685c]

