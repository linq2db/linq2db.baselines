-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	j."Name" || '!'
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

