-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @fm Char(1) -- AnsiStringFixedLength
SET     @fm = 'F'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] <> @fm

