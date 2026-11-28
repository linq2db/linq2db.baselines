-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
WITH "CTE_1" ("Id")
AS
(
	INSERT INTO "InsertOutputQueryEvent"
	(
		"PersistenceId",
		"SequenceNumber"
	)
	SELECT
		t1."PersistenceId",
		t1."SequenceNumber"
	FROM
		"InsertOutputQueryInput" t1
	RETURNING
		"InsertOutputQueryEvent"."Id"
)
SELECT
	t3."Id"
FROM
	"CTE_1" t3
LIMIT 1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	s."Id"
FROM
	"InsertOutputQuerySource" s
WHERE
	s."Id" IN (1)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryEvent" t1

