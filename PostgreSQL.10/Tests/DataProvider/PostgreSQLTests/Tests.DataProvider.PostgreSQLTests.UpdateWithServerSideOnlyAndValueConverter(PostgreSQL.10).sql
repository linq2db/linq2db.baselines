-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Data Jsonb -- Object
SET     @Data = '{"SomeKey":"abc","Updated":null}'

INSERT INTO "JsonbConvertedTable"
(
	"Id",
	"Data"
)
VALUES
(
	:Id,
	:Data
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
UPDATE
	"JsonbConvertedTable"
SET
	"Data" = jsonb_set("JsonbConvertedTable"."Data", ARRAY['Updated'], 'true'::jsonb)
WHERE
	"JsonbConvertedTable"."Id" = 1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."Id",
	x."Data"
FROM
	"JsonbConvertedTable" x
WHERE
	x."Id" = 1
LIMIT 1

