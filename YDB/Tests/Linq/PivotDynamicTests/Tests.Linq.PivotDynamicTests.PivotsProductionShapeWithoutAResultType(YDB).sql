-- YDB Ydb
SELECT
	a.Id as Id
FROM
	Activity a
ORDER BY
	a.Id

-- YDB Ydb
SELECT
	g_1.Id as Id,
	MAX(CASE
		WHEN g_1.TheKey = 10 THEN rub.IdeRub
		ELSE NULL
	END) as IDE_10,
	MAX(CASE
		WHEN g_1.TheKey = 20 THEN rub.IdeRub
		ELSE NULL
	END) as IDE_20,
	MAX(CASE
		WHEN g_1.TheKey = 30 THEN rub.IdeRub
		ELSE NULL
	END) as IDE_30,
	MAX(CASE
		WHEN g_1.TheKey = 10 THEN rub.LibRub
		ELSE NULL
	END) as LIB_10,
	MAX(CASE
		WHEN g_1.TheKey = 20 THEN rub.LibRub
		ELSE NULL
	END) as LIB_20,
	MAX(CASE
		WHEN g_1.TheKey = 30 THEN rub.LibRub
		ELSE NULL
	END) as LIB_30
FROM
	ModTemplate g_1
		INNER JOIN Activity act ON g_1.TheKey = act.Id
		INNER JOIN CoaMask cm ON g_1.Id = cm.Id
		LEFT JOIN IasRub rub ON rub.Id = g_1.RubId
GROUP BY
	g_1.Id

