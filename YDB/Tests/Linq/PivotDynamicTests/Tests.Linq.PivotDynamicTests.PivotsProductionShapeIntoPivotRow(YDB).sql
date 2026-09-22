-- YDB Ydb
SELECT
	a.Id as Id
FROM
	Activity a
ORDER BY
	a.Id

-- YDB Ydb
SELECT
	e.Id as Id,
	MAX(CASE
		WHEN e.TheKey = 10 THEN rub.IdeRub
		ELSE NULL
	END) as IDE_10,
	MAX(CASE
		WHEN e.TheKey = 20 THEN rub.IdeRub
		ELSE NULL
	END) as IDE_20,
	MAX(CASE
		WHEN e.TheKey = 30 THEN rub.IdeRub
		ELSE NULL
	END) as IDE_30,
	MAX(CASE
		WHEN e.TheKey = 10 THEN rub.LibRub
		ELSE NULL
	END) as LIB_10,
	MAX(CASE
		WHEN e.TheKey = 20 THEN rub.LibRub
		ELSE NULL
	END) as LIB_20,
	MAX(CASE
		WHEN e.TheKey = 30 THEN rub.LibRub
		ELSE NULL
	END) as LIB_30
FROM
	ModTemplate e
		INNER JOIN Activity act ON e.TheKey = act.Id
		INNER JOIN CoaMask cm ON e.Id = cm.Id
		LEFT JOIN IasRub rub ON rub.Id = e.RubId
GROUP BY
	e.Id

