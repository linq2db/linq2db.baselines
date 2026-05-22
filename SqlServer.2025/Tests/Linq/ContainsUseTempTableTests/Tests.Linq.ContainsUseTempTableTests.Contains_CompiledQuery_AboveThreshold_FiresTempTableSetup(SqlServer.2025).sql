-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_7bfcfc2e5a25]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7bfcfc2e5a25](item)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_7bfcfc2e5a25] [t1]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_7bfcfc2e5a25]

