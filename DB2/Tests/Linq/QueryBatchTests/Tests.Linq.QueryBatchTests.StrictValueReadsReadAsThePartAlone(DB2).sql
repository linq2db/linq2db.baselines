-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."not_null",
	"t1"."Value_1",
	"t2"."not_null",
	"t2"."Name",
	"t3"."Id",
	"t3"."Name",
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" "t4"
	)
FROM
	(
		SELECT
			"i"."Id",
			"i"."Name"
		FROM
			"BatchItem" "i"
		WHERE
			"i"."Id" = 4
		FETCH NEXT 1 ROWS ONLY
	) "t3"
		LEFT JOIN (
			SELECT
				1 as "not_null",
				"i_1"."Value" as "Value_1"
			FROM
				"BatchItem" "i_1"
			WHERE
				"i_1"."Id" = 3
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
		LEFT JOIN (
			SELECT
				1 as "not_null",
				"i_2"."Name"
			FROM
				"BatchItem" "i_2"
			WHERE
				"i_2"."Id" = 5
			FETCH NEXT 1 ROWS ONLY
		) "t2" ON 1=1

-- DB2 DB2.LUW DB2LUW
SELECT
	"i"."Value"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" = 3
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"i"."Name"
FROM
	"BatchItem" "i"
WHERE
	"i"."Id" = 5
FETCH NEXT 1 ROWS ONLY

