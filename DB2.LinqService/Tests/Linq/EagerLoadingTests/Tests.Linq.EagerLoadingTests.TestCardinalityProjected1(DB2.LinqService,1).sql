﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"e"."Id",
	"a_ObjectB"."Id",
	"a_ObjectC"."Id",
	"a_ObjectC".FK
FROM
	"EntityA" "e"
		INNER JOIN "EntityB" "a_ObjectB" ON "e".FK = "a_ObjectB"."Id"
		LEFT JOIN "EntityC" "a_ObjectC" ON "a_ObjectB".FK = "a_ObjectC"."Id"

