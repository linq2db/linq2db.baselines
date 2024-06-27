﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Request"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Request"
(
	"Id" SERIAL  NOT NULL,

	CONSTRAINT "PK_Request" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Metric"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Metric"
(
	"Id"        SERIAL  NOT NULL,
	"RequestId" Int     NOT NULL,
	"Value"     Float       NULL,

	CONSTRAINT "PK_Metric" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.not_null,
	t1."Value_1",
	t1."HasValue"
FROM
	"Request" a
		LEFT JOIN LATERAL (
			SELECT
				CASE
					WHEN "a_Metrics"."Value" IS NOT NULL THEN CASE
						WHEN "a_Metrics"."Value" IS NOT NULL THEN True
						ELSE False
					END
					ELSE False
				END as "Value_1",
				"a_Metrics"."Value" as "HasValue",
				1 as not_null
			FROM
				"Metric" "a_Metrics"
			WHERE
				a."Id" = "a_Metrics"."RequestId"
			LIMIT 1
		) t1 ON 1=1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Metric"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Request"

