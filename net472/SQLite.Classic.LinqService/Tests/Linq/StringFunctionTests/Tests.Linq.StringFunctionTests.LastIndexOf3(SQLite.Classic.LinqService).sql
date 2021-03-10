BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Length_1  -- Int32
SET     @Length_1 = 9

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN CharIndex('123', LeftStr('123' || [p].[FirstName] || '0123451234', 11), 6) = 0
			THEN -1
		ELSE @Length_1 - CharIndex('321', Reverse(Substr('123' || [p].[FirstName] || '0123451234', 6, 6)))
	END = 8 AND
	[p].[PersonID] = 1

