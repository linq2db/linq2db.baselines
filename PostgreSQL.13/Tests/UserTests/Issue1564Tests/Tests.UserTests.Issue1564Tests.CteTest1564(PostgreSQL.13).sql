BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

WITH RECURSIVE "categoryHierarchy"
(
	"RootCategoryId",
	"CategoryId",
	"ParentCategoryId",
	"Name",
	"Level_1"
)
AS
(
	SELECT
		"innerC"."Id",
		"innerC"."Id",
		"innerC"."ParentId",
		"innerC"."Name",
		0::Int
	FROM
		"Issue1564Category" "innerC"
	UNION ALL
	SELECT
		ch."RootCategoryId",
		t1."Id",
		t1."ParentId",
		t1."Name",
		ch."Level_1" + 1
	FROM
		"Issue1564Category" t1
			INNER JOIN "categoryHierarchy" ch ON ch."ParentCategoryId" = t1."Id"
)
SELECT
	t2."CategoryId",
	t2."ParentCategoryId",
	t2."Name",
	t2."RootCategoryId",
	t2."Level_1"
FROM
	"categoryHierarchy" t2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

WITH RECURSIVE "categoryHierarchy"
(
	"RootCategoryId",
	"ParentCategoryId",
	"Name",
	"Level_1"
)
AS
(
	SELECT
		"innerC"."Id",
		"innerC"."ParentId",
		"innerC"."Name",
		0::Int
	FROM
		"Issue1564Category" "innerC"
	UNION ALL
	SELECT
		ch."RootCategoryId",
		t1."ParentId",
		t1."Name",
		ch."Level_1" + 1
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
			STRING_AGG(c1."Name", ' -> ' ORDER BY c1."Level_1" DESC)
		FROM
			"categoryHierarchy" c1
		WHERE
			c1."RootCategoryId" = c_1."Id"
	)
FROM
	"Issue1564Category" c_1

