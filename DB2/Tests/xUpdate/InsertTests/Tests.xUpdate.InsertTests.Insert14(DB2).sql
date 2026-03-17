-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || (
		SELECT
			"p"."FirstName"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	),
	'Shepard',
	'M'
)

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

