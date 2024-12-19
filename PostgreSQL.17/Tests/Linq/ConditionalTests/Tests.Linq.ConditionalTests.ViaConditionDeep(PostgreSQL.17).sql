BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ConditionalData"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ConditionalData"
(
	"Id"         Int  NOT NULL,
	"StringProp" text     NULL,

	CONSTRAINT "PK_ConditionalData" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(1,'String1'),
(2,'String2'),
(3,NULL),
(4,'String4'),
(5,'String5'),
(6,NULL),
(7,'String7'),
(8,'String8'),
(9,NULL),
(10,'String10'),
(11,'-1')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	CASE
		WHEN x."StringProp" = '1' OR x."StringProp" IS NULL THEN True
		ELSE False
	END,
	x."StringProp",
	x."StringProp" || '2'
FROM
	"ConditionalData" x
WHERE
	CASE
		WHEN x."StringProp" = '1' OR x."StringProp" IS NULL THEN '2'
		WHEN x."StringProp" = '2' THEN x."StringProp"
		ELSE x."StringProp" || '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN x."StringProp" = '1' OR x."StringProp" IS NULL THEN NULL
		WHEN x."StringProp" = '2' THEN 1
		ELSE 2
	END = 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."StringProp"
FROM
	"ConditionalData" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ConditionalData"

