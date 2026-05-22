-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_a8504a035c23]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a8504a035c23](item)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_a8504a035c23] [t1]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_a8504a035c23]

