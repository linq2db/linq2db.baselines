BeforeExecute
-- SqlServer.2005 (asynchronously)

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

BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

