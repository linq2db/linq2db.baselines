-- SqlServer.2005

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					MIN([g_1].[ID]) as [In_1]
				FROM
					[test_in_2] [g_1]
				GROUP BY
					[g_1].[GV]
			) [t1]
		WHERE
			[t].[ID] = [t1].[In_1] OR [t].[ID] IS NULL AND [t1].[In_1] IS NULL
	)

-- SqlServer.2005

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[GV]
FROM
	[test_in_2] [t1]

