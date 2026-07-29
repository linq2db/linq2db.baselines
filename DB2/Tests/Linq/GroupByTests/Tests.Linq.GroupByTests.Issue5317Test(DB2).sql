-- DB2 DB2.LUW DB2LUW
SELECT
	(
		SELECT
			"a_Reference"."Name"
		FROM
			"TestTable" "t1"
				INNER JOIN "Reference" "a_Reference" ON "t1"."ReferenceId" = "a_Reference"."Id"
		WHERE
			"g_1"."Id" = "t1"."Id"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"TestTable" "g_1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."ReferenceId",
	"a_Reference"."Id",
	"a_Reference"."Name"
FROM
	"TestTable" "t1"
		INNER JOIN "Reference" "a_Reference" ON "t1"."ReferenceId" = "a_Reference"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."ReferenceId"
FROM
	"TestTable" "t1"

