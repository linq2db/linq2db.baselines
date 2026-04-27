-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = 'O'

SELECT
	[x].[PersonID],
	[x].[Diagnosis]
FROM
	[Patient] [x]
		INNER JOIN [Person] [y] ON [x].[PersonID] = [y].[PersonID]
WHERE
	[y].[Gender] = @gender

