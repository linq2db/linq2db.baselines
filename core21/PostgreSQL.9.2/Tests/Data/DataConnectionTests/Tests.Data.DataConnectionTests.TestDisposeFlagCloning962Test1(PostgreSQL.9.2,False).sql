BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Categories"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE IF NOT EXISTS "Categories"
(
	"CategoryID"   SERIAL  NOT NULL,
	"CategoryName" text    NOT NULL,
	"Description"  text        NULL,

	CONSTRAINT "PK_Categories" PRIMARY KEY ("CategoryID")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "Categories"
(
	"CategoryName",
	"Description"
)
VALUES
('Name 1','Desc 1'),
('Name 2','Desc 2')

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Products"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE IF NOT EXISTS "Products"
(
	"ProductID"       SERIAL  NOT NULL,
	"ProductName"     text    NOT NULL,
	"CategoryID"      Int         NULL,
	"QuantityPerUnit" text        NULL,

	CONSTRAINT "PK_Products" PRIMARY KEY ("ProductID")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "Products"
(
	"ProductName",
	"CategoryID",
	"QuantityPerUnit"
)
VALUES
('Prod 1',1,'q 1'),
('Prod 2',1,'q 2'),
('Prod 3',3,'q 3'),
('Prod 4',3,'q 4'),
('Prod 5',1,'q 5'),
('Prod 6',1,'q 6')

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	"lw_Category"."CategoryID",
	detail."ProductID",
	detail."ProductName",
	detail."CategoryID",
	detail."QuantityPerUnit"
FROM
	"Categories" "lw_Category"
		INNER JOIN "Products" detail ON "lw_Category"."CategoryID" = detail."CategoryID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."CategoryID",
	t1."CategoryName",
	t1."Description"
FROM
	"Categories" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Products"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Categories"

