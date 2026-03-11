-- Sybase.Managed Sybase
DECLARE @abcdefghijabcdefghijabcdef Integer -- Int32
SET     @abcdefghijabcdefghijabcdef = 1

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = @abcdefghijabcdefghijabcdef

