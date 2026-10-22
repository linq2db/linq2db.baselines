-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"
ORDER BY
	"t1"."Id"
FETCH NEXT 3 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" "t1"
	)
FROM SYSIBM.SYSDUMMY1

