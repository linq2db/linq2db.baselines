-- Oracle.19.Managed Oracle.Managed Oracle12
UPDATE
	"UpdateSubquerySourceTable" x
SET
	("FirstName", "LastName") = (
		SELECT
			CASE
				WHEN canChange."Id" IS NOT NULL THEN canChange."FirstName"
				ELSE x."FirstName"
			END,
			CASE
				WHEN canChange."Id" IS NOT NULL THEN canChange."LastName"
				ELSE x."LastName"
			END
		FROM
			(
				SELECT
					1 as "c1"
				FROM SYS.DUAL
			) t1
				LEFT JOIN "UpdateSubquerySourceTable" canChange ON canChange."Id" = x."Id" + 1
	)
WHERE
	x."Id" = 3

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."FirstName",
	t1."LastName"
FROM
	"UpdateSubquerySourceTable" t1
ORDER BY
	t1."Id"

