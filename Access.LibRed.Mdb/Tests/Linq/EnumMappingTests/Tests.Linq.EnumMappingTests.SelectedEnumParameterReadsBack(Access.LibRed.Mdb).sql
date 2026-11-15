-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @gender  -- Int32
SET     @gender = 1

SELECT
	[p].[PersonID],
	CVar(@gender)
FROM
	[Person] [p]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

