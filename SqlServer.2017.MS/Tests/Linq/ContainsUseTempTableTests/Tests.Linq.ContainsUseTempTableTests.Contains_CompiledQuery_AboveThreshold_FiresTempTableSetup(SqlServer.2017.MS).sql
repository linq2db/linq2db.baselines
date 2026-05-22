-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_caa093aaaf22]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_caa093aaaf22](item)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_caa093aaaf22] [t1]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_caa093aaaf22]

