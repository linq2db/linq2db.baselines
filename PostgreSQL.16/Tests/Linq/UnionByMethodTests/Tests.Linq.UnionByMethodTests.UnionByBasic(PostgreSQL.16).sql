-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Key_1",
	t1."Value_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_2."Key_1" ORDER BY e_2."SourceIndex", e_2."Key_1") as "RowNumber",
			e_2."Id",
			e_2."Key_1",
			e_2."Value_1"
		FROM
			(
				SELECT
					e."Id",
					e."Key" as "Key_1",
					e."Value" as "Value_1",
					0::Int as "SourceIndex"
				FROM
					"UnionByLeft" e
				UNION ALL
				SELECT
					e_1."Id",
					e_1."Key" as "Key_1",
					e_1."Value" as "Value_1",
					1::Int as "SourceIndex"
				FROM
					"UnionByRight" e_1
			) e_2
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."Key_1"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Key",
	t1."Value"
FROM
	"UnionByLeft" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Key",
	t1."Value"
FROM
	"UnionByRight" t1

