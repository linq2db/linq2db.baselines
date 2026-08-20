-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Elapsed"
FROM
	"DynamicDurationRow" t1
LIMIT 2

-- PostgreSQL.11 PostgreSQL
SELECT
	r."Elapsed"::Float / 60
FROM
	"DynamicDurationRow" r
LIMIT 2

