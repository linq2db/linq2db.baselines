BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" t1
			WHERE
				1 = CASE
					WHEN t1."MiddleName" <> t1."LastName" OR t1."MiddleName" IS NULL
						THEN 1
					WHEN t1."MiddleName" = t1."LastName" AND t1."MiddleName" IS NOT NULL
						THEN 0
					ELSE NULL
				END
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

