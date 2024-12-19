BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Request"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Request"
(
	"Id" SERIAL  NOT NULL,

	CONSTRAINT "PK_Request" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Metric"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Metric"
(
	"Id"        SERIAL  NOT NULL,
	"RequestId" Int     NOT NULL,
	"Value"     Float       NULL,

	CONSTRAINT "PK_Metric" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1.cond_1,
	t1.cond
FROM
	"Request" a
		LEFT JOIN LATERAL (
			SELECT
				"a_Metrics"."Value" as cond,
				CASE
					WHEN "a_Metrics"."Value" IS NOT NULL THEN True
					ELSE False
				END as cond_1
			FROM
				"Metric" "a_Metrics"
			WHERE
				a."Id" = "a_Metrics"."RequestId"
			LIMIT 1
		) t1 ON 1=1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Metric"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Request"

