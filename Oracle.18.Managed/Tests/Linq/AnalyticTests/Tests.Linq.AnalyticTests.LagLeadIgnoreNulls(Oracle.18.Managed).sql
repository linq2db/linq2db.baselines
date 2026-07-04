-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	p."Id",
	LAG(p."Id") OVER (ORDER BY p."Order"),
	LAG(p."Id") IGNORE NULLS OVER (ORDER BY p."Order"),
	LEAD(p."Id") OVER (ORDER BY p."Order" DESC),
	LEAD(p."Id") IGNORE NULLS OVER (ORDER BY p."Order" DESC)
FROM
	"Position" p
WHERE
	p."Group" = :group_1
ORDER BY
	p."Order"

