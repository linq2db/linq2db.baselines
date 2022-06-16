BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

WITH [CTE_1] ([Operator])
AS
(
	SELECT
		[x].[LastName]
	FROM
		[Person] [x]
)
SELECT
	[t1].[Operator]
FROM
	[CTE_1] [t1]
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[LastName]
FROM
	[Person] [x]
LIMIT 1

