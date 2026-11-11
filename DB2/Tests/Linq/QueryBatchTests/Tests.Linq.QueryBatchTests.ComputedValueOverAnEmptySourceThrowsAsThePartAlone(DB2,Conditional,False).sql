-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("i"."Id" > 0 AS smallint),
	"i"."Id",
	"i"."GroupId"
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
	"t1"."Item1",
	"t1"."c1",
	"t1"."Id",
	"t1"."GroupId"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYSIBM.SYSDUMMY1
	) "t2"
		LEFT JOIN (
			SELECT
				CAST("i"."Id" > 0 AS smallint) as "c1",
				"i"."Id",
				"i"."GroupId",
				1 as "Item1"
			FROM
				"BatchItem" "i"
			WHERE
				"i"."Id" > 100
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

