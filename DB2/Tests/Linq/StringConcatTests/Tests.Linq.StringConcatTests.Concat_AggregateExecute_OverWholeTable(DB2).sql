-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG(Coalesce("t1"."Value", ''), '') WITHIN GROUP (ORDER BY "t1".PK)
FROM
	"ConcatGroupedEntity" "t1"

