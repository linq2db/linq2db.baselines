BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	p."Id",
	FIRST_VALUE(p."Id") OVER(ORDER BY p."Order" DESC),
	FIRST_VALUE(p."Id" IGNORE NULLS) OVER(ORDER BY p."Order" DESC),
	LAST_VALUE(p."Id") OVER(ORDER BY p."Order"),
	LAST_VALUE(p."Id" IGNORE NULLS) OVER(ORDER BY p."Order")
FROM
	"Position" p
WHERE
	p."Group" = :group_1

