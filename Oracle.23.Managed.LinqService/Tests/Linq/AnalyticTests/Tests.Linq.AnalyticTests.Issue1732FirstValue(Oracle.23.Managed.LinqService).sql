BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	p."Id",
	FIRST_VALUE(p."Id") OVER(ORDER BY p."Order" DESC)
FROM
	"Position" p
WHERE
	p."Group" = :group_1

