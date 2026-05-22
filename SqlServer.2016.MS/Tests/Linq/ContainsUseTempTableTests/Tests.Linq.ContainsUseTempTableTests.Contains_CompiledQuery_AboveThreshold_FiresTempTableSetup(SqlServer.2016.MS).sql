-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_e63bd147fa76]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e63bd147fa76](item)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_e63bd147fa76] [t1]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_e63bd147fa76]

