-- YDB Ydb
SELECT
	k_1.Id as Id,
	k_1.`Number` as Number_1,
	k_1.StatusBitmask as StatusBitmask,
	Unwrap(CAST(k_1.StatusBitmask AS Uint32)) & Unwrap(CAST(128 AS Uint32)) as IsBlocked,
	Unwrap(CAST(Coalesce(g_1.StatusBitmask, 0) AS Uint32)) & Unwrap(CAST(128 AS Uint32)) as IsBlockedStudent
FROM
	TupleJoinPerson k_1
		LEFT JOIN TupleJoinStudent g_1 ON k_1.Id = g_1.Id AND Unwrap(CAST(k_1.`Number` AS Text)) = g_1.`Number`

