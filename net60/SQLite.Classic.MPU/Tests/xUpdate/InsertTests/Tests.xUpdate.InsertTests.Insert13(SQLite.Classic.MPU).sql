BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'FirstName',
	'LastName',
	'M'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 4

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > @id

