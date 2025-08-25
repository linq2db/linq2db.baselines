BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."Id"
FROM
	"Dog" x
		INNER JOIN "Human" a_Owner ON x."OwnerId" = a_Owner."Id"
		INNER JOIN "House" a_House ON a_Owner."HouseId" = a_House."Id"
		LEFT JOIN (
			SELECT
				a_WindowAtPosition."Id"
			FROM
				"Window" a_WindowAtPosition
			WHERE
				a_WindowAtPosition."Position" = 6 AND ROWNUM <= 1
		) t1 ON 1=1
WHERE
	ROWNUM <= 1

