-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[TestBool] [t1]
SET
	[t1].[Value] = CASE
		WHEN [t1].[Value] = False OR [t1].[Value] IS NULL THEN True
		ELSE False
	END

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

