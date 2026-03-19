-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t2"."Id",
	"t2"."Field1"
FROM
	"TestEntity1" "t1"
		LEFT JOIN "TestEntity2" "t2" ON "t1"."Id" = "t2"."Id"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t2"."Id",
	"t2"."Field1"
FROM
	"TestEntity2" "t2"
		LEFT JOIN "TestEntity1" "t1" ON "t2"."Id" = "t1"."Id"
WHERE
	"t1"."Id" IS NULL

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field1",
	NULL,
	NULL,
	NULL,
	"t2"."Id",
	"t2"."Id",
	"t2"."Field1",
	NULL,
	NULL
FROM
	"TestEntity1" "t1"
		LEFT JOIN "TestEntity2" "t2" ON "t1"."Id" = "t2"."Id"
UNION ALL
SELECT
	NULL,
	NULL,
	"t1_1"."Id",
	"t1_1"."Id",
	"t1_1"."Field1",
	NULL,
	NULL,
	NULL,
	"t3"."Id",
	"t3"."Field1"
FROM
	"TestEntity2" "t3"
		LEFT JOIN "TestEntity1" "t1_1" ON "t3"."Id" = "t1_1"."Id"
WHERE
	"t1_1"."Id" IS NULL

