-- Oracle.11.Managed Oracle11
SELECT
	BITAND(k_1."StatusBitmask", 128),
	BITAND(Coalesce(g_1."StatusBitmask", 0), 128)
FROM
	"TupleJoinPerson" k_1
		LEFT JOIN "TupleJoinStudent" g_1 ON k_1."Id" = g_1."Id" AND CAST(k_1."Number" AS VarChar(255)) = g_1."Number"

