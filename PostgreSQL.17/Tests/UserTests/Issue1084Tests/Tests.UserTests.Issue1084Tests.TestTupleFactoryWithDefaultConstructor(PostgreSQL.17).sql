-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."StatusBitmask" & 128,
	g_1."StatusBitmask" & 128
FROM
	i1084_person t1
		LEFT JOIN i1084_student g_1 ON t1."Id" = g_1."Id" AND t1."Number"::text = g_1."Number"

