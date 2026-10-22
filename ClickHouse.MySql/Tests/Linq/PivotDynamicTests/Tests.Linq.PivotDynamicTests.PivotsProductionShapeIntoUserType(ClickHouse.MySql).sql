-- ClickHouse.MySql ClickHouse
SELECT
	a.Id
FROM
	Activity a
ORDER BY
	a.Id

-- ClickHouse.MySql ClickHouse
SELECT
	g_1.Id,
	maxOrNull(cm.Name),
	maxOrNull(pos.LibRub),
	MAX(g_1.ModifiedAt),
	maxOrNull(CASE
		WHEN g_1.TheKey = 10 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 20 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 30 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 10 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 20 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 30 THEN rub.LibRub
		ELSE NULL
	END)
FROM
	ModTemplate g_1
		INNER JOIN Activity act ON g_1.TheKey = act.Id
		INNER JOIN CoaMask cm ON g_1.Id = cm.Id
		LEFT JOIN AtiRub pos ON pos.Id = g_1.PosRubId
		LEFT JOIN IasRub rub ON rub.Id = g_1.RubId
GROUP BY
	g_1.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.Key_1,
	r.CoaName,
	r.PosLibRub,
	r.ModifiedAt,
	r.IDE_10,
	r.IDE_20,
	r.IDE_30,
	r.LIB_10,
	r.LIB_20,
	r.LIB_30
FROM
	(
		SELECT
			g_1.Id as Key_1,
			maxOrNull(CASE
				WHEN g_1.TheKey = 20 THEN rub.IdeRub
				ELSE NULL
			END) as IDE_20,
			maxOrNull(cm.Name) as CoaName,
			maxOrNull(pos.LibRub) as PosLibRub,
			MAX(g_1.ModifiedAt) as ModifiedAt,
			maxOrNull(CASE
				WHEN g_1.TheKey = 10 THEN rub.IdeRub
				ELSE NULL
			END) as IDE_10,
			maxOrNull(CASE
				WHEN g_1.TheKey = 30 THEN rub.IdeRub
				ELSE NULL
			END) as IDE_30,
			maxOrNull(CASE
				WHEN g_1.TheKey = 10 THEN rub.LibRub
				ELSE NULL
			END) as LIB_10,
			maxOrNull(CASE
				WHEN g_1.TheKey = 20 THEN rub.LibRub
				ELSE NULL
			END) as LIB_20,
			maxOrNull(CASE
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
	r.Key_1 = 1 AND r.IDE_20 = 'IDE-B'

-- ClickHouse.MySql ClickHouse
SELECT
	g_1.Id,
	maxOrNull(cm.Name),
	maxOrNull(pos.LibRub),
	MAX(g_1.ModifiedAt),
	maxOrNull(CASE
		WHEN g_1.TheKey = 10 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 20 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 30 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 40 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 10 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 20 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 30 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.TheKey = 40 THEN rub.LibRub
		ELSE NULL
	END)
FROM
	ModTemplate g_1
		INNER JOIN Activity act ON g_1.TheKey = act.Id
		INNER JOIN CoaMask cm ON g_1.Id = cm.Id
		LEFT JOIN AtiRub pos ON pos.Id = g_1.PosRubId
		LEFT JOIN IasRub rub ON rub.Id = g_1.RubId
GROUP BY
	g_1.Id

