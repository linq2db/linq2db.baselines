-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	(
		SELECT
			se."Value"
		FROM
			"StringAssociationValue" se
		WHERE
			se."Id" = t1."Id"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"StringAssociationOwner" t1

