-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)
ORDER BY
	[t].[ID]

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

