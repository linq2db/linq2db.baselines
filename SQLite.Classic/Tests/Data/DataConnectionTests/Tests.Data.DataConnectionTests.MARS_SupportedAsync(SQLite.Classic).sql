BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @p_ID  -- Int32
SET     @p_ID = 1

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]
WHERE
	[t1].[PersonID] = @p_ID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @p_ID  -- Int32
SET     @p_ID = 2

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]
WHERE
	[t1].[PersonID] = @p_ID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @p_ID  -- Int32
SET     @p_ID = 3

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]
WHERE
	[t1].[PersonID] = @p_ID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @p_ID  -- Int32
SET     @p_ID = 4

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]
WHERE
	[t1].[PersonID] = @p_ID

