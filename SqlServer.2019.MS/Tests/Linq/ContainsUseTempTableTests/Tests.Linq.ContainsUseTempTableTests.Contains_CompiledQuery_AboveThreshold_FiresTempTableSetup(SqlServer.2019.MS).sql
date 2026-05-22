-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_47b41fd1993e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_47b41fd1993e](item)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_47b41fd1993e] [t1]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_47b41fd1993e]

