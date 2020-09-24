BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @gender_1 Char(1) -- AnsiStringFixedLength
SET     @gender_1 = 'M'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @gender_1

