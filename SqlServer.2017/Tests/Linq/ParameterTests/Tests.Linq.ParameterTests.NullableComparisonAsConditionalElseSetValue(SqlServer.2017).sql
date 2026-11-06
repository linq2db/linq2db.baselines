-- SqlServer.2017
UPDATE
	[SetFlagTable]
SET
	[F] = CASE
		WHEN [SetFlagTable].[C] IS NULL THEN CASE
			WHEN [SetFlagTable].[F] = 1 THEN 1
			WHEN [SetFlagTable].[F] = 0 THEN 0
			ELSE NULL
		END
		WHEN [SetFlagTable].[A] = [SetFlagTable].[B] OR [SetFlagTable].[A] IS NULL AND [SetFlagTable].[B] IS NULL
			THEN 1
		ELSE 0
	END

-- SqlServer.2017
SELECT
	[r].[F]
FROM
	[SetFlagTable] [r]
ORDER BY
	[r].[Id]

