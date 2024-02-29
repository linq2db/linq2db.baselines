BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID NVarChar(4) -- String
SET     @ID = 'John'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @ID
LIMIT @take

