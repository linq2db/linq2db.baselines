-- DB2 DB2.LUW DB2LUW

SELECT
	"t2"."ReferenceName"
FROM
	"TestTable" "g_1"
		INNER JOIN (
			SELECT
				"a_Reference"."Name" as "ReferenceName",
				ROW_NUMBER() OVER (PARTITION BY "t1"."Id" ORDER BY "t1"."Id") as "rn",
				"t1"."Id"
			FROM
				"TestTable" "t1"
					INNER JOIN "Reference" "a_Reference" ON "t1"."ReferenceId" = "a_Reference"."Id"
		) "t2" ON "g_1"."Id" = "t2"."Id" AND "t2"."rn" = 1

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

