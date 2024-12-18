BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ComplexPredicate"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ComplexPredicate"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(1,NULL),
(2,'other'),
(3,'123'),
(4,'test'),
(5,'1')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Value"
FROM
	"ComplexPredicate" r
WHERE
	CASE
		WHEN r."Value" = '123' AND r."Value" IS NOT NULL THEN True
		ELSE False
	END = CASE
		WHEN r."Value" = '1' AND r."Value" IS NOT NULL OR r."Value" = 'test' AND r."Value" IS NOT NULL AND (r."Value" <> '1' OR r."Value" IS NULL)
			THEN True
		ELSE False
	END
ORDER BY
	r."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"ComplexPredicate" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ComplexPredicate"

