BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @group Integer(4) -- Int32
SET     @group = 7

SELECT
	p.Id,
	LAST_VALUE(p.Id) OVER(ORDER BY p."Order")
FROM
	"Position" p
WHERE
	p."Group" = @group

