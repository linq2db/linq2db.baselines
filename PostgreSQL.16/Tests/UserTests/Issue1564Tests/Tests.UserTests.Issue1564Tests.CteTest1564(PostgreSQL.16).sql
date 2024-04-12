﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1564Category"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1564Category"
(
	"Id"           Int     NOT NULL,
	"IsVisible"    Boolean NOT NULL,
	"DisplayOrder" Int     NOT NULL,
	"ParentId"     Int     NOT NULL,
	"Name"         text        NULL,

	CONSTRAINT "PK_Issue1564Category" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH RECURSIVE "categoryHierarchy"
(
	"RootCategoryId",
	"CategoryId",
	"ParentCategoryId",
	"Name",
	"Level"
)
AS
(
	SELECT
		"innerC"."Id",
		"innerC"."Id",
		"innerC"."ParentId",
		"innerC"."Name",
		0
	FROM
		"Issue1564Category" "innerC"
	UNION ALL
	SELECT
		ch."RootCategoryId",
		t1."Id",
		t1."ParentId",
		t1."Name",
		ch."Level" + 1
	FROM
		"Issue1564Category" t1
			INNER JOIN "categoryHierarchy" ch ON ch."ParentCategoryId" = t1."Id"
)
SELECT
	t2."CategoryId",
	t2."ParentCategoryId",
	t2."Name",
	t2."RootCategoryId",
	t2."Level"
FROM
	"categoryHierarchy" t2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH RECURSIVE "categoryHierarchy"
(
	"RootCategoryId",
	"CategoryId",
	"ParentCategoryId",
	"Name",
	"Level"
)
AS
(
	SELECT
		"innerC"."Id",
		"innerC"."Id",
		"innerC"."ParentId",
		"innerC"."Name",
		0
	FROM
		"Issue1564Category" "innerC"
	UNION ALL
	SELECT
		ch."RootCategoryId",
		t1."Id",
		t1."ParentId",
		t1."Name",
		ch."Level" + 1
	FROM
		"Issue1564Category" t1
			INNER JOIN "categoryHierarchy" ch ON ch."ParentCategoryId" = t1."Id"
)
SELECT
	c_1."Id",
	c_1."IsVisible",
	c_1."DisplayOrder",
	(
		SELECT
			STRING_AGG(c1."Name", ' -> ' ORDER BY c1."Level" DESC)
		FROM
			"categoryHierarchy" c1
		WHERE
			c1."RootCategoryId" = c_1."Id"
	)
FROM
	"Issue1564Category" c_1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1564Category"

