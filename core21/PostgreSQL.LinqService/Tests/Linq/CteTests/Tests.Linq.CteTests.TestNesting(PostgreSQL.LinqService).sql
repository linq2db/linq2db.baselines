BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NestingA"
(
	"Property1" text     NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NestingB"
(
	"Property1" text     NULL,
	"Property2" text     NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "NestingC"
(
	"Property1" text     NULL,
	"Property2" text     NULL,
	"Property3" text     NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

WITH "CTE_1" ("Property2")
AS
(
	SELECT 
		a."Property2"
	FROM
		"NestingC" a
)
SELECT 
	c2."Property1", 
	t_1."Property2", 
	t_1."Property3"
FROM
	( 
		SELECT 
			c1."Property2" as "Property1"
		FROM
			"CTE_1" c1,
			"NestingC" t
	) c2,
	"NestingC" t_1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "NestingC"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "NestingB"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "NestingA"

