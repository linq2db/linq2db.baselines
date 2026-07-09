-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	x."Type",
	x."OwnerId",
	"a_Owner"."Id",
	"a_Owner"."Name"
FROM
	"Item" x
		LEFT JOIN "Owner" "a_Owner" ON x."OwnerId" = "a_Owner"."Id"

