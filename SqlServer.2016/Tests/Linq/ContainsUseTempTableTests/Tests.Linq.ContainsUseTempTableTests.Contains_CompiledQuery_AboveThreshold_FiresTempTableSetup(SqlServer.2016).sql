-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_4624e629dabe]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_4624e629dabe](item)

-- SqlServer.2016

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_4624e629dabe] [t1]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_4624e629dabe]

