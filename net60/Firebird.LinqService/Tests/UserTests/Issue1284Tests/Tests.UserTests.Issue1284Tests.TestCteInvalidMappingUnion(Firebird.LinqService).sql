BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

WITH CTE_1
(
	"entry",
	"rn",
	"FirstName",
	ID,
	"LastName",
	"MiddleName"
)
AS
(
	SELECT
		"x"."Gender",
		"x"."rn",
		"x"."FirstName",
		"x".ID,
		"x"."LastName",
		"x"."MiddleName"
	FROM
		(
			SELECT
				"person_1"."FirstName",
				"person_1"."PersonID" as ID,
				"person_1"."LastName",
				"person_1"."MiddleName",
				"person_1"."Gender",
				1 as "rn"
			FROM
				"Person" "person_1"
			UNION ALL
			SELECT
				"person_2"."FirstName",
				"person_2"."PersonID" as ID,
				"person_2"."LastName",
				"person_2"."MiddleName",
				"person_2"."Gender",
				2 as "rn"
			FROM
				"Person" "person_2"
		) "x"
	WHERE
		"x"."rn" = 1
)
SELECT FIRST @take
	"t1"."FirstName",
	"t1".ID,
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."entry",
	"t1"."rn"
FROM
	CTE_1 "t1"

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"x"."FirstName",
	"x".ID,
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender",
	"x"."rn"
FROM
	(
		SELECT
			"person_1"."FirstName",
			"person_1"."PersonID" as ID,
			"person_1"."LastName",
			"person_1"."MiddleName",
			"person_1"."Gender",
			1 as "rn"
		FROM
			"Person" "person_1"
		UNION ALL
		SELECT
			"person_2"."FirstName",
			"person_2"."PersonID" as ID,
			"person_2"."LastName",
			"person_2"."MiddleName",
			"person_2"."Gender",
			2 as "rn"
		FROM
			"Person" "person_2"
	) "x"
WHERE
	"x"."rn" = 1

