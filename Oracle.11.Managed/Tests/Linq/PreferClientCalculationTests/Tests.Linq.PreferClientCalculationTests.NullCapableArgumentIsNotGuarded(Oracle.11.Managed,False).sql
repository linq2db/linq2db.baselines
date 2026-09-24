-- Oracle.11.Managed Oracle11
SELECT
	j."Name" || '!'
FROM
	"MissedJoinEntity" e
		LEFT JOIN "MissedJoinEntity" j ON j."Id" = e."Id" + 1000

