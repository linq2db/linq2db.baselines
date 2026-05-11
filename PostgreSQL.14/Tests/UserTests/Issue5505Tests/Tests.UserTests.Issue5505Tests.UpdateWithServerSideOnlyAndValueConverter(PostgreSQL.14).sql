-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Data Jsonb -- Object
SET     @Data = '{"SomeKey":"abc","Updated":null}'

INSERT INTO "Issue5505Table"
(
	"Id",
	"Data"
)
VALUES
(
	:Id,
	:Data
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

UPDATE
	"Issue5505Table"
SET
	"Data" = jsonb_set("Issue5505Table"."Data", ARRAY['Updated'], 'true'::jsonb)
WHERE
	"Issue5505Table"."Id" = 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	x."Id",
	x."Data"
FROM
	"Issue5505Table" x
WHERE
	x."Id" = 1
LIMIT 1

