-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_bf5cab16ae1b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_bf5cab16ae1b](item)

-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_bf5cab16ae1b] [t1]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_bf5cab16ae1b]

