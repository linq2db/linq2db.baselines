-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_def08ef8d5a0]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_def08ef8d5a0](item)

-- SqlServer.2016

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_def08ef8d5a0] [t1]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_def08ef8d5a0]

