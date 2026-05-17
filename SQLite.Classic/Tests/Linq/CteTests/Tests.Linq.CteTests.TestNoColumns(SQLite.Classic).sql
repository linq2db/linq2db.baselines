-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Child] [t1]

-- SQLite.Classic SQLite

WITH [CTE1_] ([c1])
AS
(
	SELECT
		1
	FROM
		[Child] [t1]
)
SELECT
	COUNT(*)
FROM
	[CTE1_] [t2]

-- SQLite.Classic SQLite

WITH [CTE1_] ([c1])
AS
(
	SELECT
		1
	FROM
		[Child] [c_1]
)
SELECT
	COUNT(*)
FROM
	[CTE1_] [t1]

-- SQLite.Classic SQLite

WITH [CTE1_] ([c1])
AS
(
	SELECT
		1
	FROM
		[Child] [c_1]
)
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[CTE1_] [t1]
	)

