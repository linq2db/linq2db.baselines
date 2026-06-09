-- PostgreSQL.15 PostgreSQL
DECLARE @data Text -- String
SET     @data = NULL

INSERT INTO "StringTestTable"
(
	"ID",
	"Data"
)
VALUES
(
	2,
	:data
)

-- PostgreSQL.15 PostgreSQL

SELECT
	t."ID",
	t."Data"
FROM
	"StringTestTable" t
WHERE
	t."ID" = 2
LIMIT 2

