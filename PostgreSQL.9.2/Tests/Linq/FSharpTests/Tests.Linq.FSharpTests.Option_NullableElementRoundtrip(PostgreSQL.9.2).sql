-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 42

INSERT INTO "OptionNullableElemTable"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = NULL

INSERT INTO "OptionNullableElemTable"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id",
	r."Value"
FROM
	"OptionNullableElemTable" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id",
	r."Value"
FROM
	"OptionNullableElemTable" r
WHERE
	r."Id" = 2
LIMIT 2

