-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_8bf2f5d4fb16]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_8bf2f5d4fb16](item)

-- SqlServer.2016

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_8bf2f5d4fb16] [t1]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_8bf2f5d4fb16]

