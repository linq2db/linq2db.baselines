BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p1  -- Boolean
SET     @p1 = 0
DECLARE @Length_1  -- Int32
SET     @Length_1 = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN @p1 = 1 THEN Length([p].[LastName]) - 1
		WHEN CharIndex('p', [p].[LastName]) = 0
			THEN -1
		ELSE (Length([p].[LastName]) - CharIndex('p', Reverse([p].[LastName]))) - @Length_1 + 1
	END = 2 AND
	[p].[PersonID] = 1

