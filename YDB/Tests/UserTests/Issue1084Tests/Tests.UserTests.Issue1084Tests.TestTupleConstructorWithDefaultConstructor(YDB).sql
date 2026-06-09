-- YDB Ydb

SELECT
	Unwrap(CAST(k_1.StatusBitmask AS Uint32)) & Unwrap(CAST(128 AS Uint32)) as IsBlocked,
	CAST(g_1.StatusBitmask AS Uint32) & Unwrap(CAST(128 AS Uint32)) as IsBlockedStudent
FROM
	i1084_person k_1
		LEFT JOIN i1084_student g_1 ON k_1.Id = g_1.Id AND Unwrap(CAST(k_1.`Number` AS Text)) = g_1.`Number`

