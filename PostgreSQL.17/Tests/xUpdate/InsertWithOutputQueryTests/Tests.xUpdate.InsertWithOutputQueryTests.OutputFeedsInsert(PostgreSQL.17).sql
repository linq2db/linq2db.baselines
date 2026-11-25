-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
WITH "CTE_1" ("Id", "ValueStr")
AS
(
	INSERT INTO "InsertOutputQueryTarget"
	(
		"Id",
		"Value",
		"ValueStr"
	)
	SELECT
		s."Id" + 10,
		s."Value",
		s."ValueStr"
	FROM
		"InsertOutputQuerySource" s
	WHERE
		s."Id" <= 4
	RETURNING
		"InsertOutputQueryTarget"."Id",
		"InsertOutputQueryTarget"."ValueStr"
)
INSERT INTO "InsertOutputQueryAudit"
(
	"TargetId",
	"Text"
)
SELECT
	t2."Id",
	'inserted ' || Coalesce(t2."ValueStr", '')
FROM
	"CTE_1" t2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id"
FROM
	"InsertOutputQueryTarget" t
ORDER BY
	t."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	a."TargetId"
FROM
	"InsertOutputQueryAudit" a
ORDER BY
	a."TargetId"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	a."TargetId",
	a."Text"
FROM
	"InsertOutputQueryAudit" a
WHERE
	a."TargetId" = 11
LIMIT 2

