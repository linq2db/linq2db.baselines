-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_cd8b0b2f7937]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cd8b0b2f7937](item)

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_cd8b0b2f7937] [t1]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cd8b0b2f7937]

