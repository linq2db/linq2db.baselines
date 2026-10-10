-- ClickHouse.Octonica ClickHouse
SELECT
	a.Id
FROM
	Activity a
ORDER BY
	a.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	e.Id,
	maxOrNull(cm.Name),
	maxOrNull(pos.LibRub),
	MAX(e.ModifiedAt),
	maxOrNull(CASE
		WHEN e.TheKey = 10 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 20 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 30 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 10 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 20 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 30 THEN rub.LibRub
		ELSE NULL
	END)
FROM
	ModTemplate e
		INNER JOIN Activity act ON e.TheKey = act.Id
		INNER JOIN CoaMask cm ON e.Id = cm.Id
		LEFT JOIN AtiRub pos ON pos.Id = e.PosRubId
		LEFT JOIN IasRub rub ON rub.Id = e.RubId
GROUP BY
	e.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	r_1.Key_1,
	r_1.CoaName,
	r_1.PosLibRub,
	r_1.ModifiedAt,
	r_1.IDE_10,
	r_1.IDE_20,
	r_1.IDE_30,
	r_1.LIB_10,
	r_1.LIB_20,
	r_1.LIB_30
FROM
	(
		SELECT
			r.Id as Key_1,
			maxOrNull(CASE
				WHEN r.TheKey = 20 THEN rub.IdeRub
				ELSE NULL
			END) as IDE_20,
			maxOrNull(cm.Name) as CoaName,
			maxOrNull(pos.LibRub) as PosLibRub,
			MAX(r.ModifiedAt) as ModifiedAt,
			maxOrNull(CASE
				WHEN r.TheKey = 10 THEN rub.IdeRub
				ELSE NULL
			END) as IDE_10,
			maxOrNull(CASE
				WHEN r.TheKey = 30 THEN rub.IdeRub
				ELSE NULL
			END) as IDE_30,
			maxOrNull(CASE
				WHEN r.TheKey = 10 THEN rub.LibRub
				ELSE NULL
			END) as LIB_10,
			maxOrNull(CASE
				WHEN r.TheKey = 20 THEN rub.LibRub
				ELSE NULL
			END) as LIB_20,
			maxOrNull(CASE
				WHEN r.TheKey = 30 THEN rub.LibRub
				ELSE NULL
			END) as LIB_30
		FROM
			ModTemplate r
				INNER JOIN Activity act ON r.TheKey = act.Id
				INNER JOIN CoaMask cm ON r.Id = cm.Id
				LEFT JOIN AtiRub pos ON pos.Id = r.PosRubId
				LEFT JOIN IasRub rub ON rub.Id = r.RubId
		GROUP BY
			r.Id
	) r_1
WHERE
	r_1.Key_1 = 1 AND r_1.IDE_20 = 'IDE-B'

-- ClickHouse.Octonica ClickHouse
SELECT
	e.Id,
	maxOrNull(cm.Name),
	maxOrNull(pos.LibRub),
	MAX(e.ModifiedAt),
	maxOrNull(CASE
		WHEN e.TheKey = 10 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 20 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 30 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 10 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 20 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 30 THEN rub.LibRub
		ELSE NULL
	END)
FROM
	ModTemplate e
		INNER JOIN Activity act ON e.TheKey = act.Id
		INNER JOIN CoaMask cm ON e.Id = cm.Id
		LEFT JOIN AtiRub pos ON pos.Id = e.PosRubId
		LEFT JOIN IasRub rub ON rub.Id = e.RubId
GROUP BY
	e.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	e.Id,
	maxOrNull(cm.Name),
	maxOrNull(pos.LibRub),
	MAX(e.ModifiedAt),
	maxOrNull(CASE
		WHEN e.TheKey = 10 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 20 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 30 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 40 THEN rub.IdeRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 10 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 20 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 30 THEN rub.LibRub
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN e.TheKey = 40 THEN rub.LibRub
		ELSE NULL
	END)
FROM
	ModTemplate e
		INNER JOIN Activity act ON e.TheKey = act.Id
		INNER JOIN CoaMask cm ON e.Id = cm.Id
		LEFT JOIN AtiRub pos ON pos.Id = e.PosRubId
		LEFT JOIN IasRub rub ON rub.Id = e.RubId
GROUP BY
	e.Id

