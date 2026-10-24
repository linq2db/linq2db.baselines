-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Date_1
FROM
	(
		SELECT
			r.Id,
			r."Date" as Date_1
		FROM
			Issue5976RowA r
		UNION ALL
		SELECT
			r_1.Id,
			r_1."Date" as Date_1
		FROM
			Issue5976RowB r_1
	) t1
ORDER BY
	t1.Id

