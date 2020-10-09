BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Issue1564Category"
(
	"Id"           Int     NOT NULL,
	"IsVisible"    Boolean NOT NULL,
	"DisplayOrder" Int     NOT NULL,
	"ParentId"     Int     NOT NULL,
	"Name"         text        NULL,

	CONSTRAINT "PK_Issue1564Category" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

WITH RECURSIVE "categoryHierarchy"
(
	"CategoryId",
	"ParentCategoryId",
	"Name",
	"RootCategoryId",
	"Level"
)
AS
(
	SELECT 
		"innerC"."Id", 
		"innerC"."ParentId", 
		"innerC"."Name", 
		"innerC"."Id", 
		0
	FROM
		"Issue1564Category" "innerC"
	UNION ALL
	SELECT 
		c_1."Id", 
		c_1."ParentId", 
		c_1."Name", 
		ch."RootCategoryId", 
		ch."Level" + 1
	FROM
		"Issue1564Category" c_1
			INNER JOIN "categoryHierarchy" ch ON ch."ParentCategoryId" = c_1."Id"
)
SELECT 
	t1."CategoryId", 
	t1."ParentCategoryId", 
	t1."Name", 
	t1."RootCategoryId", 
	t1."Level"
FROM
	"categoryHierarchy" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

WITH RECURSIVE "categoryHierarchy"
(
	"CategoryId",
	"ParentCategoryId",
	"Name",
	"RootCategoryId",
	"Level"
)
AS
(
	SELECT 
		"innerC"."Id", 
		"innerC"."ParentId", 
		"innerC"."Name", 
		"innerC"."Id", 
		0
	FROM
		"Issue1564Category" "innerC"
	UNION ALL
	SELECT 
		c_1."Id", 
		c_1."ParentId", 
		c_1."Name", 
		ch."RootCategoryId", 
		ch."Level" + 1
	FROM
		"Issue1564Category" c_1
			INNER JOIN "categoryHierarchy" ch ON ch."ParentCategoryId" = c_1."Id"
)
SELECT 
	c_2."Id", 
	c_2."IsVisible", 
	c_2."DisplayOrder", 
	(
		SELECT 
			STRING_AGG(c1."Name", ' -> ' ORDER BY c1."Level" DESC)
		FROM
			"categoryHierarchy" c1
		WHERE
			c1."RootCategoryId" = c_2."Id"
	)
FROM
	"Issue1564Category" c_2

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Issue1564Category"

