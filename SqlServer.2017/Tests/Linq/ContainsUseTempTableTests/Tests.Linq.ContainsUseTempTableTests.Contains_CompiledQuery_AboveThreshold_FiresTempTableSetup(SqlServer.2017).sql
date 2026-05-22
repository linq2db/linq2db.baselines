-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_252a65b16085]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_252a65b16085](item)

-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_252a65b16085] [t1]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_252a65b16085]

