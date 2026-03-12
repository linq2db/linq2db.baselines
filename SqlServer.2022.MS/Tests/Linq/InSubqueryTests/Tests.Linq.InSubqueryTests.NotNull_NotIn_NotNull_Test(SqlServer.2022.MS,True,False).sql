-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[PK],
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
	[t].[PK]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[PK],
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[PK],
	[t1].[ID]
FROM
	[test_in_2] [t1]

