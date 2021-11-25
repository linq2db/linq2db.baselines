BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NestingA"
(
	"Property1" text     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NestingB"
(
	"Property1" text     NULL,
	"Property2" text     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NestingC"
(
	"Property1" text     NULL,
	"Property2" text     NULL,
	"Property3" text     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

WITH "CTE_1" ("Property2")
AS
(
	SELECT
		a."Property2"
	FROM
		"NestingC" a
)
SELECT
	c1."Property2",
	t_1."Property2",
	t_1."Property3"
FROM
	"CTE_1" c1
		CROSS JOIN "NestingC" t
		CROSS JOIN "NestingC" t_1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NestingC"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NestingB"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NestingA"

