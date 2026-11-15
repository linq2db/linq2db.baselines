-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @skip  -- Int32
SET     @skip = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] LIKE 'J%'
ORDER BY
	[x].[PersonID] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

