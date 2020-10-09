BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert14%'

BeforeExecute
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
		FETCH FIRST 1 ROWS ONLY
	),
	'Shepard',
	'M'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert14%'

