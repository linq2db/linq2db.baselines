-- SQLite.MS SQLite
SELECT
	MAX(CASE
		WHEN [t1].[Id] = 2 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SQLite.MS SQLite
SELECT
	MIN(CASE
		WHEN [t1].[Id] = 2 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SQLite.MS SQLite
SELECT
	MAX(CASE
		WHEN [t1].[Id] = 2 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SQLite.MS SQLite
SELECT
	MIN(CASE
		WHEN [t1].[Id] = 2 THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SQLite.MS SQLite
SELECT
	MAX(CASE
		WHEN CASE
			WHEN [t1].[Id] = 2 THEN 1
			ELSE [t1].[Id] > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

-- SQLite.MS SQLite
SELECT
	MIN(CASE
		WHEN CASE
			WHEN [t1].[Id] = 2 THEN 1
			ELSE [t1].[Id] > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	[Item] [t1]

