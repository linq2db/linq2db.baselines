BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1"."PersonID",
	"a_Doctor"."PersonID",
	"a_Doctor"."Taxonomy"
FROM
	"Person" "t1"
		LEFT JOIN "Doctor" "a_Doctor" ON "t1"."PersonID" = "a_Doctor"."PersonID"
WHERE
	CHARACTER_LENGTH("a_Doctor"."Taxonomy",CODEUNITS32) >= 0 OR
	"a_Doctor"."Taxonomy" IS NULL

