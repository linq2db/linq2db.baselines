-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"ReferenceConversionRow" "r"
WHERE
	"r"."Plain" = "r"."Guarded" OR "r"."Plain" IS NULL AND "r"."Guarded" IS NULL

