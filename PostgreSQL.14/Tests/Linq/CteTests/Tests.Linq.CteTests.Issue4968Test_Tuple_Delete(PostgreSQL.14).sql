-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @menuId Integer -- Int32
SET     @menuId = 1

WITH RECURSIVE "cteQueryable" ("Item1", "Item2")
AS
(
	SELECT
		item_1."Id",
		item_1."ParentItemId"
	FROM
		"Issue4968Item" item_1
	WHERE
		item_1."MenuId" = :menuId
	UNION ALL
	SELECT
		item_2."Id",
		item_2."ParentItemId"
	FROM
		"Issue4968Item" item_2
			INNER JOIN "cteQueryable" cte ON item_2."ParentItemId" = cte."Item1"
)
DELETE FROM
	"Issue4968Item" i
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"cteQueryable" tuple
		WHERE
			tuple."Item1" = i."Id"
	)

