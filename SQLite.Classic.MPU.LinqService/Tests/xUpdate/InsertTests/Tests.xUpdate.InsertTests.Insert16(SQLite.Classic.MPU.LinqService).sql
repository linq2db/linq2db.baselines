BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @name  -- Int32
SET     @name = 8
DECLARE @idx  -- Int32
SET     @idx = 4

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert16',
	CAST(@name + @idx AS NVarChar(11)),
	'M'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

