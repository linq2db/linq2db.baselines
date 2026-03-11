-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			a_WindowAtPosition."Id"
		FROM
			"Window" a_WindowAtPosition
		WHERE
			a_WindowAtPosition."Position" = 6
		FETCH NEXT 1 ROWS ONLY
	) as "Id"
FROM
	"Dog" x
		INNER JOIN "Human" a_Owner ON x."OwnerId" = a_Owner."Id"
		INNER JOIN "House" a_House ON a_Owner."HouseId" = a_House."Id"
FETCH NEXT 1 ROWS ONLY

