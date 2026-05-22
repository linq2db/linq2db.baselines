-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_f96ba8319afb]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_f96ba8319afb](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_f96ba8319afb] [t1]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_f96ba8319afb]

