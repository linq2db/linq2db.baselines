-- SQLite.MS SQLite
DECLARE @p NVarChar(1) -- String
SET     @p = 'X'
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p_1 AND LastName <> @p
	) [p]

