-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[PersonID]
FROM
	[Patient] [x]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[PersonID],
	[x].[FirstName]
FROM
	[Person] [x]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[PersonID],
	[person_1].[PersonID] as [ID_1],
	[person_1].[FirstName]
FROM
	[Patient] [x]
		INNER JOIN [Person] [person_1] ON ([x].[PersonID] = [person_1].[PersonID])

