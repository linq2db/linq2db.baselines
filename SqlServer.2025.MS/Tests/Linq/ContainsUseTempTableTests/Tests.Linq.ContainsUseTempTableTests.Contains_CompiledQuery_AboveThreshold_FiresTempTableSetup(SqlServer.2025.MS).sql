-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_99ed8162bd3c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_99ed8162bd3c](item)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_99ed8162bd3c] [t1]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_99ed8162bd3c]

