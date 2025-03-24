BeforeExecute
--  DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
--  DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
		INSERT INTO "Person"
		(
			"FirstName",
			"LastName",
			"Gender"
		)
		VALUES
		(
			'John',
			'Shepard',
			'M'
		)
	)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

