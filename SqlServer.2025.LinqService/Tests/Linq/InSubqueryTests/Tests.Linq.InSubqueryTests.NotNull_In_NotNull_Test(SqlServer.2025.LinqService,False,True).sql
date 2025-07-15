BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

