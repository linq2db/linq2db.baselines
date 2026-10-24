-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."c1",
	t1."Id",
	t1."Date_1"
FROM
	(
		SELECT
			r."Id",
			NULL as "c1",
			r."Date" as "Date_1"
		FROM
			"Issue5976RowA" r
		UNION ALL
		SELECT
			r_1."Id",
			r_1."Date" as "c1",
			NULL as "Date_1"
		FROM
			"Issue5976RowC" r_1
	) t1
ORDER BY
	t1."Id"

