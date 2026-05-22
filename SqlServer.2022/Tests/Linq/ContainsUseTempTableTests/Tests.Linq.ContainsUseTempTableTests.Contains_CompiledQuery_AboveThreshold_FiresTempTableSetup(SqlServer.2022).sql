-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_3358292c0890]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_3358292c0890](item)

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_3358292c0890] [t1]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_3358292c0890]

