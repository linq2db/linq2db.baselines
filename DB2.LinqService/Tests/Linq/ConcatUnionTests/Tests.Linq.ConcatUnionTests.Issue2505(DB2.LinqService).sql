BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"i_2"."LastName"
FROM
	(
		SELECT
			CASE
				WHEN "i"."MiddleName" IS NULL THEN 'M'
				ELSE 'O'
			END as "Gender",
			"i"."FirstName",
			"i"."PersonID" as ID,
			"i"."LastName",
			"i"."MiddleName",
			"i"."Gender" as "Gender_1"
		FROM
			"Person" "i"
		UNION ALL
		SELECT
			CASE
				WHEN "i_1"."MiddleName" IS NULL THEN 'M'
				ELSE 'O'
			END as "Gender",
			"i_1"."FirstName",
			"i_1"."PersonID" as ID,
			"i_1"."LastName",
			"i_1"."MiddleName",
			"i_1"."Gender" as "Gender_1"
		FROM
			"Person" "i_1"
	) "i_2"
WHERE
	"i_2"."Gender" = 'O'
ORDER BY
	"i_2"."FirstName" DESC

