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
	(
		SELECT
			"i"."Id"
		FROM
			"BatchItem" "i"
		WHERE
			"i"."Id" > 100
		FETCH NEXT 1 ROWS ONLY
	)
FROM SYSIBM.SYSDUMMY1

