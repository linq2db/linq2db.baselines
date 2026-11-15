-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @gender  -- Int32
SET     @gender = 1

SELECT
	[g_1].[Gender],
	CVar(@gender)
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[Gender]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

