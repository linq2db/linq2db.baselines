-- PostgreSQL.13 PostgreSQL12
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

-- PostgreSQL.13 PostgreSQL12
SELECT
	s."Id"
FROM
	"InsertOutputQuerySource" s
WHERE
	s."Id" IN (1, 2, 3)

CommitTransactionAsync
-- PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryEvent" t1

