BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	p."Id",
	NTH_VALUE(p."Id", 2) FROM FIRST OVER(ORDER BY p."Order" DESC)
FROM
	"Position" p
WHERE
	p."Group" = :group_1

