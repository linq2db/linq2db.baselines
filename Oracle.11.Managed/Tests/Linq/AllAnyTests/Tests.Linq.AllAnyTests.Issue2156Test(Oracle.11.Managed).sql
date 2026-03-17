-- Oracle.11.Managed Oracle11

SELECT DISTINCT
	i."FirstName",
	i."PersonID",
	i."LastName",
	i."MiddleName",
	i."Gender",
	u."FirstName",
	u."PersonID",
	u."LastName",
	u."MiddleName",
	u."Gender",
	i."FirstName",
	i."PersonID",
	i."LastName",
	i."MiddleName",
	i."Gender",
	i."FirstName",
	i."PersonID",
	i."LastName",
	i."MiddleName",
	i."Gender",
	e_1."FirstName",
	e_1.ID,
	e_1."LastName",
	e_1."MiddleName",
	e_1."Gender",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" tg
			WHERE
				t."PersonID" = tg."PersonID" AND tg."FirstName" = 'John'
		)
			THEN 1
		ELSE 0
	END
FROM
	"Person" i
		LEFT JOIN "Patient" a_Patient ON i."PersonID" = a_Patient."PersonID"
		LEFT JOIN "Person" t ON i."PersonID" = t."PersonID" AND t."FirstName" <> 'Nameless One'
		LEFT JOIN "Person" u ON i."PersonID" = u."PersonID"
		LEFT JOIN (
			SELECT
				e."FirstName",
				e."PersonID" as ID,
				e."LastName",
				e."MiddleName",
				e."Gender",
				ROW_NUMBER() OVER (PARTITION BY e."PersonID" ORDER BY e."PersonID") as "rn"
			FROM
				"Person" e
		) e_1 ON u."PersonID" = e_1.ID AND e_1."rn" = 1
WHERE
	a_Patient."Diagnosis" <> 'Immortality' OR a_Patient."Diagnosis" IS NULL
ORDER BY
	u."PersonID"

