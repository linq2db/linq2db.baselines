-- PostgreSQL.15 PostgreSQL12
DECLARE @ValueStr Text(6) -- String
SET     @ValueStr = 'copied'

WITH "CTE_1" ("Id")
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
		"InsertOutputQueryTarget"."Id"
)
UPDATE
	"InsertOutputQuerySource"
SET
	"ValueStr" = :ValueStr
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"CTE_1" i
		WHERE
			i."Id" = "InsertOutputQuerySource"."Id"
	)

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQuerySource" s
WHERE
	s."ValueStr" = 'copied'

