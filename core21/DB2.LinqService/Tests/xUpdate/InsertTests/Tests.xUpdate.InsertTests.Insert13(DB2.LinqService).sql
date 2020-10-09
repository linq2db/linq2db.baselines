BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Max("t"."PersonID")
FROM
	"Person" "t"

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
	'FirstName',
	'LastName',
	'M'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > @id

