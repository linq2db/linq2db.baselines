-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(j."Value1" AS VarChar(255))
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

