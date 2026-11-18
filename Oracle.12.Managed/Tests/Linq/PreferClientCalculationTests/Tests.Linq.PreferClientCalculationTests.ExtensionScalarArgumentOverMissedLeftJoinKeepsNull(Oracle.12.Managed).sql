-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	j."Value1" + 1
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

