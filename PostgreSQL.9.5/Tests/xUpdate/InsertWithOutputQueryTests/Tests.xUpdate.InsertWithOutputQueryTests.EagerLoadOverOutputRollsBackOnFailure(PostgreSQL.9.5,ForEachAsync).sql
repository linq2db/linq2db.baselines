-- PostgreSQL.9.5 PostgreSQL
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
	e."Id"
FROM
	"CTE_1" e

-- PostgreSQL.9.5 PostgreSQL
SELECT
	s."Id"
FROM
	"InsertOutputQuerySource" s
WHERE
	s."Id" IN (1, 2, 3)

-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryEvent" t1

