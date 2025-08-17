BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID] OR [t].[ID] IS NULL AND [p].[ID] IS NULL
	)

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

