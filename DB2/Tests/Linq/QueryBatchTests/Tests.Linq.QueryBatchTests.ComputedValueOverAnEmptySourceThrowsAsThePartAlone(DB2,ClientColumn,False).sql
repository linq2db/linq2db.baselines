-- DB2 DB2.LUW DB2LUW
SELECT
	"i"."Id"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" > 100
FETCH NEXT 1 ROWS ONLY

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
	"t1"."not_null",
	"t1"."Item1"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYSIBM.SYSDUMMY1
	) "t2"
		LEFT JOIN (
			SELECT
				1 as "not_null",
				"i"."Id" as "Item1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" > 100
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

