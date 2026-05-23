-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_38761a6ab360]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_38761a6ab360](item)

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_38761a6ab360] [t1]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_38761a6ab360]

