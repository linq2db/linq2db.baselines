-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_949d764aea80]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_949d764aea80](item)

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_949d764aea80] [t1]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_949d764aea80]

