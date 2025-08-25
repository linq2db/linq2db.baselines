BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] NOT IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)
ORDER BY
	[t].[ID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

