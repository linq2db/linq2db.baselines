-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_7e104927027e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7e104927027e](item)

-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_7e104927027e] [t1]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_7e104927027e]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_7e104927027e]

