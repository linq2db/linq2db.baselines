-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT DISTINCT
	(
		SELECT
			cc."Name"
		FROM
			"LookupCity" cc
		WHERE
			cc."Code" = t1."Code" OR cc."Code" IS NULL AND t1."Code" IS NULL
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"LookupPerson" t1

