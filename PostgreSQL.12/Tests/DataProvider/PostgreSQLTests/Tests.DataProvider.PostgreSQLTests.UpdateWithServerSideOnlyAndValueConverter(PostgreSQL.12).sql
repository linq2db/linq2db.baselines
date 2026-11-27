-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
UPDATE
	"JsonbConvertedTable"
SET
	"Data" = jsonb_set("JsonbConvertedTable"."Data", ARRAY['Updated'], 'true'::jsonb)
WHERE
	"JsonbConvertedTable"."Id" = 1

-- PostgreSQL.12 PostgreSQL12
SELECT
	x."Id",
	x."Data"
FROM
	"JsonbConvertedTable" x
WHERE
	x."Id" = 1
LIMIT 1

