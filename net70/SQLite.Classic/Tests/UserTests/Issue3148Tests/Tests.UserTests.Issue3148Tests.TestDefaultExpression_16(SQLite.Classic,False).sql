BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Key_1],
	[t1].[Key_2],
	[t1].[Key_3],
	Coalesce([t1].[Key_3], 'M')
FROM
	(
		SELECT
			[selectParam].[LastName] as [Key_1],
			0 as [Key_2],
			NULL as [Key_3]
		FROM
			[Person] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Key_2],
	[t1].[Key_3]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Key_1],
	[t1].[Key_2],
	[t1].[Key_3],
	Coalesce([t1].[Key_3], 'M')
FROM
	(
		SELECT
			[selectParam].[LastName] as [Key_1],
			0 as [Key_2],
			NULL as [Key_3]
		FROM
			[Person] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Key_2],
	[t1].[Key_3]

