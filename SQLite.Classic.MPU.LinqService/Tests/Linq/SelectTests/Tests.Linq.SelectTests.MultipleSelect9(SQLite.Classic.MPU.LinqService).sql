BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @Length  -- Int32
SET     @Length = 2

SELECT
	([p5].[PersonID] * @Length) / 2,
	[p5].[FirstName]
FROM
	[Person] [p5]

