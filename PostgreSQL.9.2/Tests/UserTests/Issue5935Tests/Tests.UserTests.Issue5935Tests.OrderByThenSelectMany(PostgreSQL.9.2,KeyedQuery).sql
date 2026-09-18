-- PostgreSQL.9.2 PostgreSQL
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	k_1.item,
	"a_Tags"."Id",
	"a_Tags"."LogId",
	"a_Tags"."Name"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "ItemLog" d ON k_1.item = d."ItemId"
		INNER JOIN "ItemTag" "a_Tags" ON d."Id" = "a_Tags"."LogId"
ORDER BY
	d."Id"

