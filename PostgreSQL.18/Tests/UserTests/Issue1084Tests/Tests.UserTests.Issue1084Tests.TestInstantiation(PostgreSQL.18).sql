﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	k_1."Id",
	k_1."Number",
	k_1."StatusBitmask",
	k_1."StatusBitmask" & 128,
	g_1."StatusBitmask" & 128
FROM
	i1084_person k_1
		LEFT JOIN i1084_student g_1 ON k_1."Id" = g_1."Id" AND k_1."Number"::text = g_1."Number"

