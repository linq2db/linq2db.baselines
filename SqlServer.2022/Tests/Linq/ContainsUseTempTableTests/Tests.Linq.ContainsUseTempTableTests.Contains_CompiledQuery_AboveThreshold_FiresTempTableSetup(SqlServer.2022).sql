-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_aa76126cfb9b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_aa76126cfb9b](item)

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_aa76126cfb9b] [t1]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_aa76126cfb9b]

