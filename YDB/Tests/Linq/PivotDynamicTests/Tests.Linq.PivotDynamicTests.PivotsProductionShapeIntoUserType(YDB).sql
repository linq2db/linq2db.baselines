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
	MAX(cm.Name) as CoaName,
	MAX(pos.LibRub) as PosLibRub,
	MAX(g_1.ModifiedAt) as ModifiedAt,
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
		LEFT JOIN AtiRub pos ON pos.Id = g_1.PosRubId
		LEFT JOIN IasRub rub ON rub.Id = g_1.RubId
GROUP BY
	g_1.Id

-- YDB Ydb
SELECT
	r.Key_1 as Key_1,
	r.CoaName as CoaName,
	r.PosLibRub as PosLibRub,
	r.ModifiedAt as ModifiedAt,
	r.IDE_10 as IDE_10,
	r.IDE_20 as IDE_20,
	r.IDE_30 as IDE_30,
	r.LIB_10 as LIB_10,
	r.LIB_20 as LIB_20,
	r.LIB_30 as LIB_30
FROM
	(
		SELECT
			g_1.Id as Key_1,
			MAX(CASE
				WHEN g_1.TheKey = 20 THEN rub.IdeRub
				ELSE NULL
			END) as IDE_20,
			MAX(cm.Name) as CoaName,
			MAX(pos.LibRub) as PosLibRub,
			MAX(g_1.ModifiedAt) as ModifiedAt,
			MAX(CASE
				WHEN g_1.TheKey = 10 THEN rub.IdeRub
				ELSE NULL
			END) as IDE_10,
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
				LEFT JOIN AtiRub pos ON pos.Id = g_1.PosRubId
				LEFT JOIN IasRub rub ON rub.Id = g_1.RubId
		GROUP BY
			g_1.Id
	) r
WHERE
	r.Key_1 = 1 AND r.IDE_20 = 'IDE-B'u

-- YDB Ydb
SELECT
	g_1.Id as Id,
	MAX(cm.Name) as CoaName,
	MAX(pos.LibRub) as PosLibRub,
	MAX(g_1.ModifiedAt) as ModifiedAt,
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
		WHEN g_1.TheKey = 40 THEN rub.IdeRub
		ELSE NULL
	END) as IDE_40,
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
	END) as LIB_30,
	MAX(CASE
		WHEN g_1.TheKey = 40 THEN rub.LibRub
		ELSE NULL
	END) as LIB_40
FROM
	ModTemplate g_1
		INNER JOIN Activity act ON g_1.TheKey = act.Id
		INNER JOIN CoaMask cm ON g_1.Id = cm.Id
		LEFT JOIN AtiRub pos ON pos.Id = g_1.PosRubId
		LEFT JOIN IasRub rub ON rub.Id = g_1.RubId
GROUP BY
	g_1.Id

