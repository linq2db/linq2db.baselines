BeforeExecute
-- SQLite.Classic SQLite

SELECT 
	[t1].[FirstName], 
	[t1].[PersonID], 
	[t1].[LastName], 
	[t1].[MiddleName], 
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 10
DECLARE @pattern NVarChar(4000) -- String
SET     @pattern = N'%1%'

SELECT TOP (@take) 
	[t1].[FirstName]
FROM
	( 
		SELECT 
			[p].[FirstName]
		FROM
			[Person] [p]
		WHERE
			[p].[FirstName] LIKE N'1'
		UNION ALL
		SELECT 
			[p_1].[FirstName]
		FROM
			[Person] [p_1]
		WHERE
			Convert(NVarChar(11), [p_1].[PersonID]) LIKE @pattern ESCAPE N'~'
	) [t1]

