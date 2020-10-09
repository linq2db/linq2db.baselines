BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3
DECLARE @skip_1 Integer(4) -- Int32
SET     @skip_1 = 4

SELECT 
	"t2"."FirstName", 
	"t2"."PersonID", 
	"t2"."LastName", 
	"t2"."MiddleName", 
	"t2"."Gender"
FROM
	( 
		SELECT 
			"t1"."FirstName", 
			"t1"."PersonID", 
			"t1"."LastName", 
			"t1"."MiddleName", 
			"t1"."Gender", 
			ROW_NUMBER() OVER (ORDER BY "t1"."LastName") as RN
		FROM
			"Person" "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= @skip_1

