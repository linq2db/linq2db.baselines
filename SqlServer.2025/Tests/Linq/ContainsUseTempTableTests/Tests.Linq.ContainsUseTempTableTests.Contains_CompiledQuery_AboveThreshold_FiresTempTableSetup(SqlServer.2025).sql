-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_6b01a35e6340]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_6b01a35e6340](item)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_6b01a35e6340] [t1]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_6b01a35e6340]

