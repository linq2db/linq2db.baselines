BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

