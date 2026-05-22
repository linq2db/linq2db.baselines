-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_cc64f8f2f37c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cc64f8f2f37c](item)

-- SqlServer.2025

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_cc64f8f2f37c] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_cc64f8f2f37c]

