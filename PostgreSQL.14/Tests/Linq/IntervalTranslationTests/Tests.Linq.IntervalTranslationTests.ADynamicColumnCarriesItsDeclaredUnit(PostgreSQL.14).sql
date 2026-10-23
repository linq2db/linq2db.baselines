-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Elapsed Bigint -- Int64
SET     @Elapsed = 5400

INSERT INTO "DynamicDurationRow"
(
	"Id",
	"Elapsed"
)
VALUES
(
	:Id,
	:Elapsed
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."Elapsed"
FROM
	"DynamicDurationRow" t1
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Elapsed"::Float / 60
FROM
	"DynamicDurationRow" r
LIMIT 2

