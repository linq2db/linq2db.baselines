-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	p."Id",
	LAST_VALUE(p."Id") OVER(ORDER BY p."Order")
FROM
	"Position" p
WHERE
	p."Group" = :group_1

