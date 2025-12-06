-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	k_1."Id",
	k_1."Number",
	k_1."StatusBitmask",
	BITAND(k_1."StatusBitmask", 128),
	BITAND(g_1."StatusBitmask", 128)
FROM
	"i1084_person" k_1
		LEFT JOIN "i1084_student" g_1 ON k_1."Id" = g_1."Id" AND CAST(k_1."Number" AS VarChar(255)) = g_1."Number"

