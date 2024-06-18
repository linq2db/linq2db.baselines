BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table1788"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table1788"
(
	"Id"     Int NOT NULL,
	"Value1" Int NOT NULL,

	CONSTRAINT "PK_Table1788" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(1,11),
(2,22),
(3,33)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value1"
FROM
	"Table1788" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN l_1."Id" IS NOT NULL THEN l_1."HasValue"
		ELSE False
	END,
	l_1."Value1"
FROM
	"Table1788" p
		LEFT JOIN (
			SELECT
				CASE
					WHEN l."Value1" IS NOT NULL THEN CASE
						WHEN l."Value1" IS NOT NULL THEN True
						ELSE False
					END
					ELSE False
				END as "HasValue",
				l."Id",
				l."Value1"
			FROM
				"Table1788" l
		) l_1 ON l_1."Id" = p."Id" + 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table1788"

