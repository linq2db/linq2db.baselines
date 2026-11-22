-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Item1",
	"t1"."Item1_1"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYSIBM.SYSDUMMY1
	) "t2"
		LEFT JOIN (
			SELECT
				1 as "Item1",
				"i"."Value" as "Item1_1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" = 3
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

