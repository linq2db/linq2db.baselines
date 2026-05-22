-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_60a5ec79ec6a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_60a5ec79ec6a](item)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_60a5ec79ec6a] [t1]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_60a5ec79ec6a]

