BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Length  -- Int32
SET     @Length = 0

SELECT
	Length([p].[FirstName]) + @Length
FROM
	[Person] [p]

