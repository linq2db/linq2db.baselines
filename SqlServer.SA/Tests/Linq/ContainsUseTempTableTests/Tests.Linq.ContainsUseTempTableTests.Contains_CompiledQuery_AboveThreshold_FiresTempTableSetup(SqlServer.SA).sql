-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_282dfed07a0b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_282dfed07a0b](item)

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_282dfed07a0b] [t1]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_282dfed07a0b]

