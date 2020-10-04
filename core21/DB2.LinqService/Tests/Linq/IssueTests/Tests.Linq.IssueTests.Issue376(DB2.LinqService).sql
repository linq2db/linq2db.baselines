BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."PersonID",
	"a_Doctor"."PersonID",
	"a_Doctor"."Taxonomy"
FROM
	"Person" "_"
		LEFT JOIN "Doctor" "a_Doctor" ON "_"."PersonID" = "a_Doctor"."PersonID"
WHERE
	(CHARACTER_LENGTH("a_Doctor"."Taxonomy",CODEUNITS32) >= 0 OR "a_Doctor"."Taxonomy" IS NULL)

