-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[NullableFlagTable] [t1]
SET
	[t1].[Flag] = CASE
		WHEN [t1].[A] = [t1].[B] OR [t1].[A] IS NULL AND [t1].[B] IS NULL
			THEN True
		ELSE False
	END

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Flag]
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

