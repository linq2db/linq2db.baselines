-- PostgreSQL.18 PostgreSQL12
WITH input_data ("PersistenceId", "SequenceNumber", "Tag")
AS
(
	SELECT
		t1."PersistenceId",
		t1."SequenceNumber",
		t1."Tag"
	FROM
		"InsertOutputQueryInput" t1
),
"CTE_1" ("PersistenceId", "SequenceNumber", "Id")
AS
(
	INSERT INTO "InsertOutputQueryEvent"
	(
		"PersistenceId",
		"SequenceNumber"
	)
	SELECT
		t2."PersistenceId",
		t2."SequenceNumber"
	FROM
		input_data t2
	RETURNING
		NEW."PersistenceId",
		NEW."SequenceNumber",
		NEW."Id"
)
INSERT INTO "InsertOutputQueryEventTag"
(
	"EventId",
	"Tag"
)
SELECT
	e."Id",
	i."Tag"
FROM
	"CTE_1" e
		INNER JOIN input_data i ON e."PersistenceId" = i."PersistenceId" AND e."SequenceNumber" = i."SequenceNumber"

-- PostgreSQL.18 PostgreSQL12
SELECT
	e."PersistenceId",
	e."SequenceNumber",
	t."Tag"
FROM
	"InsertOutputQueryEventTag" t
		INNER JOIN "InsertOutputQueryEvent" e ON t."EventId" = e."Id"
ORDER BY
	e."PersistenceId",
	e."SequenceNumber"

