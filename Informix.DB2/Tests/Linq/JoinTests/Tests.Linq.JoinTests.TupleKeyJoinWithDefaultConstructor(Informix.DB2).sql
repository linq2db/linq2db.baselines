-- Informix.DB2 Informix
SELECT
	BitAnd(k_1.StatusBitmask, 128),
	BitAnd(Nvl(g_1.StatusBitmask, 0), 128)
FROM
	TupleJoinPerson k_1
		LEFT JOIN TupleJoinStudent g_1 ON k_1.Id = g_1.Id AND To_Char(k_1."Number") = g_1."Number"

