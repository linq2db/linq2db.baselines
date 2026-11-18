-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	CASE
		WHEN [r].[A] = [r].[B] THEN True
		ELSE False
	END
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

