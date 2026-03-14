-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Key_1",
	t1."Value_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_3."Key_1" ORDER BY e_3."SourceIndex", e_3."Id") as "RowNumber",
			e_3."Id",
			e_3."Key_1",
			e_3."Value_1"
		FROM
			(
				SELECT
					e_1."Id",
					e_1."Key_1",
					e_1."Value_1",
					e_1."SourceIndex"
				FROM
					(
						SELECT
							e."Id",
							e."Key" as "Key_1",
							e."Value" as "Value_1",
							CAST(0 AS Int) as "SourceIndex"
						FROM
							"UnionByTable" e
						ORDER BY
							e."Id"
					) e_1
				UNION ALL
				SELECT
					e_2."Id",
					e_2."Key" as "Key_1",
					e_2."Value" as "Value_1",
					CAST(1 AS Int) as "SourceIndex"
				FROM
					"UnionByTable" e_2
			) e_3
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Key",
	t1."Value"
FROM
	"UnionByTable" t1

