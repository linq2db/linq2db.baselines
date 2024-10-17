BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Length  -- Int32
SET     @Length = 0

SELECT
	Length([p].[FirstName]) + @Length
FROM
	[Person] [p]

