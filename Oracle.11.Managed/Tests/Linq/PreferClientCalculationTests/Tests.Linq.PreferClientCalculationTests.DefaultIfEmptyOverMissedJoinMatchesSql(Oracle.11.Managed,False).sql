-- Oracle.11.Managed Oracle11
SELECT
	CAST(j."Value1" AS VarChar(255))
FROM
	"MissedJoinEntity" t1
		LEFT JOIN "MissedJoinEntity" j ON t1."Id" + 1000 = j."Id"

