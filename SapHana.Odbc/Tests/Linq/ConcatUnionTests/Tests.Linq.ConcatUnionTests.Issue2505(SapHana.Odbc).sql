BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p NVarChar(1) -- String
SET     @p = 'M'
DECLARE @p NVarChar(1) -- String
SET     @p = 'O'
DECLARE @p NVarChar(1) -- String
SET     @p = 'M'
DECLARE @p NVarChar(1) -- String
SET     @p = 'O'
DECLARE @p NVarChar(1) -- String
SET     @p = 'O'

SELECT
	"i_2"."LastName"
FROM
	(
		SELECT
			CASE
				WHEN "i"."MiddleName" IS NULL THEN ?
				ELSE ?
			END as "Gender",
			"i"."FirstName",
			"i"."LastName"
		FROM
			"Person" "i"
		UNION ALL
		SELECT
			CASE
				WHEN "i_1"."MiddleName" IS NULL THEN ?
				ELSE ?
			END as "Gender",
			"i_1"."FirstName",
			"i_1"."LastName"
		FROM
			"Person" "i_1"
	) "i_2"
WHERE
	"i_2"."Gender" = ?
ORDER BY
	"i_2"."FirstName" DESC

