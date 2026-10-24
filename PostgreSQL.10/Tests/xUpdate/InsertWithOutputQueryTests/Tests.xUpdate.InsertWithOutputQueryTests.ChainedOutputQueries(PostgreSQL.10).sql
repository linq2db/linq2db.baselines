-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
		s."Id",
		s."Value",
		s."ValueStr"
	FROM
		"InsertOutputQuerySource" s
	WHERE
		s."Id" <= 3
	RETURNING
		"InsertOutputQueryTarget"."Id",
		"InsertOutputQueryTarget"."ValueStr"
),
"CTE_2" ("TargetId")
AS
(
	INSERT INTO "InsertOutputQueryAudit"
	(
		"TargetId",
		"Text"
	)
	SELECT
		t2."Id",
		t2."ValueStr"
	FROM
		"CTE_1" t2
	RETURNING
		"InsertOutputQueryAudit"."TargetId"
)
SELECT
	t4."TargetId"
FROM
	"CTE_2" t4
ORDER BY
	t4."TargetId"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryAudit" t1

