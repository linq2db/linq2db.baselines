-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @gender  -- Int32
SET     @gender = 1

SELECT
	[p_2].[ID],
	[p_2].[Gender]
FROM
	(
		SELECT
			@gender as [Gender],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		UNION ALL
		SELECT
			@gender as [Gender],
			[p_1].[PersonID] as [ID]
		FROM
			[Person] [p_1]
	) [p_2]
WHERE
	[p_2].[Gender] = @gender

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

