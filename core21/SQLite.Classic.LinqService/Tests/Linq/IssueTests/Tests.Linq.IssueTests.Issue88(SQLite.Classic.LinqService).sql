BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND [_].[Gender] = 'M'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND 'M' = [_].[Gender]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @gender_1 NChar -- StringFixedLength
SET     @gender_1 = 'M'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND [_].[Gender] = @gender_1

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @gender_1 NChar -- StringFixedLength
SET     @gender_1 = 'M'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND @gender_1 = [_].[Gender]

