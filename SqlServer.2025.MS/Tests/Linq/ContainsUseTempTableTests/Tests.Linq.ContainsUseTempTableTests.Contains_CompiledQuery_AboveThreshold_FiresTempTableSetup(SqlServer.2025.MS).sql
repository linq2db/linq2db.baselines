-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_37557788bf03]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_37557788bf03](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_37557788bf03] [t1]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_37557788bf03]

