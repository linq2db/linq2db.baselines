-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."Type",
	x."OwnerId",
	"a_Owner"."Id",
	"a_Owner"."Name"
FROM
	"Item" x
		LEFT JOIN "Owner" "a_Owner" ON x."OwnerId" = "a_Owner"."Id"

