-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_4fc34f7260d0]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_4fc34f7260d0](item)

-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_4fc34f7260d0] [t1]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_4fc34f7260d0]

