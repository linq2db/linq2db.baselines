-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Declared_Elapsed Bigint -- Int64
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed Bigint -- Int64
SET     @Converted_Elapsed = 5400

INSERT INTO "NestedDurationRow"
(
	"Id",
	"Declared",
	"Converted"
)
VALUES
(
	:Id,
	:Declared_Elapsed,
	:Converted_Elapsed
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Declared",
	t1."Converted"
FROM
	"NestedDurationRow" t1
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Declared"::Float / 60
FROM
	"NestedDurationRow" r
LIMIT 2

