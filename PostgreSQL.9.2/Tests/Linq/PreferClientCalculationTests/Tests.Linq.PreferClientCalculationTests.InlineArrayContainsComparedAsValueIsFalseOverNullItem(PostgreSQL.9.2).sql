-- PostgreSQL.9.2 PostgreSQL
SELECT
	e."Id",
	e."Item",
	e."Flag"
FROM
	"NestedInListEntity" e
WHERE
	(e."Flag") = (e."Id" = e."Item" AND e."Item" IS NOT NULL OR e."Id" = 5)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Item",
	t1."Flag"
FROM
	"NestedInListEntity" t1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	e."Id",
	e."Item",
	e."Flag"
FROM
	"NestedInListEntity" e
WHERE
	(e."Flag") <> (e."Id" = e."Item" AND e."Item" IS NOT NULL OR e."Id" = 5)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Item",
	t1."Flag"
FROM
	"NestedInListEntity" t1

