BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @idx  -- Int32
SET     @idx = 12

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert16',
	Cast(@idx as NVarChar(11)),
	'M'
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

