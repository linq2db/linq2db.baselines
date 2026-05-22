-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_307f1642e104]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_307f1642e104](item)

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_307f1642e104] [t1]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_307f1642e104]

