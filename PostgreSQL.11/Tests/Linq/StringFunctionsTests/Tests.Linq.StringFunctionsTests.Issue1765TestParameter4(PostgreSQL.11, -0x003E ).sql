BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"     Int         NOT NULL,
	"Value1" text            NULL,
	"Value2" text            NULL,
	"Value3" VarChar(50)     NULL,
	"Value4" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(1,'V1','V2',NULL,'V4'),
(2,NULL,'Z2',NULL,NULL),
(3,'Z1',NULL,NULL,'Z4')

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @separator Text(4) -- String
SET     @separator = ' -> '

SELECT
	(
		SELECT
			MAX(t."Value4")
		FROM
			"SampleClass" t
		WHERE
			g_1."Id" = t."Id" AND (g_1."Value4" = t."Value4" OR g_1."Value4" IS NULL AND t."Value4" IS NULL)
	),
	STRING_AGG(g_1."Value4", :separator)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"
ORDER BY
	g_1."Id"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

