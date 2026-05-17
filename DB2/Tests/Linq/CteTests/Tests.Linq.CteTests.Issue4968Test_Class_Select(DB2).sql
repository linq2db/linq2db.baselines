-- DB2 DB2.LUW DB2LUW
DECLARE @menuId Integer(4) -- Int32
SET     @menuId = 1

WITH "cteQueryable" ("Id1")
AS
(
	SELECT
		"item_1"."Id"
	FROM
		"Issue4968Item" "item_1"
	WHERE
		"item_1"."MenuId" = @menuId
	UNION ALL
	SELECT
		"item_2"."Id"
	FROM
		"Issue4968Item" "item_2",
		"cteQueryable" "cte"
	WHERE
		"item_2"."ParentItemId" = "cte"."Id1"
)
SELECT
	"i"."Id",
	"i"."MenuId",
	"i"."ParentItemId"
FROM
	"Issue4968Item" "i"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"cteQueryable" "t"
		WHERE
			"t"."Id1" = "i"."Id"
	)

