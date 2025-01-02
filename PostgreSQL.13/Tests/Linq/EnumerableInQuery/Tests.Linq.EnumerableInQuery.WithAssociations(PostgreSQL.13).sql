BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SomeItem"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SomeItem"
(
	"Id"      Int NOT NULL,
	"ColorId" Int     NULL,
	"StyleId" Int     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "SomeItem"
(
	"Id",
	"ColorId",
	"StyleId"
)
VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,1,2),
(5,2,3),
(6,NULL,1),
(7,3,NULL),
(8,NULL,NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SomeColor"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SomeColor"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "SomeColor"
(
	"Id",
	"Name"
)
VALUES
(1,'Red'),
(2,'Green'),
(3,'Blue')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SomeStyle"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SomeStyle"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "SomeStyle"
(
	"Id",
	"Name"
)
VALUES
(1,'Bold'),
(2,'Italic'),
(3,'Underline')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	it_1.cond,
	it_1."ColorName",
	it_1."StyleName"
FROM
	"SomeItem" t1
		LEFT JOIN "SomeColor" "a_Color" ON t1."ColorId" = "a_Color"."Id"
		LEFT JOIN "SomeStyle" "a_Style" ON t1."StyleId" = "a_Style"."Id"
		LEFT JOIN LATERAL (
			SELECT
				it."ColorName",
				it."StyleName",
				1 as cond
			FROM
				(VALUES
					("a_Color"."Name","a_Style"."Name"),
					(NULL,"a_Style"."Name")
				) it("ColorName", "StyleName")
		) it_1 ON 1=1
WHERE
	it_1."ColorName" = 'Red'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId",
	"a_Color"."Id",
	"a_Color"."Name",
	"a_Style"."Id",
	"a_Style"."Name"
FROM
	"SomeItem" t1
		LEFT JOIN "SomeColor" "a_Color" ON t1."ColorId" = "a_Color"."Id"
		LEFT JOIN "SomeStyle" "a_Style" ON t1."StyleId" = "a_Style"."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SomeStyle"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SomeColor"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SomeItem"

