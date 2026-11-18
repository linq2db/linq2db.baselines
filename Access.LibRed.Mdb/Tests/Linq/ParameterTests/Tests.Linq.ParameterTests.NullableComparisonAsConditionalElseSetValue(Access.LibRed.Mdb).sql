-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[SetFlagTable] [t1]
SET
	[t1].[F] = CASE
		WHEN [t1].[C] IS NULL THEN [t1].[F]
		WHEN [t1].[A] = [t1].[B] OR [t1].[A] IS NULL AND [t1].[B] IS NULL
			THEN True
		ELSE False
	END

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[F]
FROM
	[SetFlagTable] [r]
ORDER BY
	[r].[Id]

