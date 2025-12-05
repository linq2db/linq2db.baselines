-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[PK],
	[t].[ID],
	[t].[GV]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND [t].[ID] NOT IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[PK],
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_1] [t1]

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[PK],
	[t1].[ID]
FROM
	[test_in_2] [t1]

