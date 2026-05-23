-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_a54cc530e492]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a54cc530e492](item)

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_a54cc530e492] [t1]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_a54cc530e492]

