﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @group Integer(4) -- Int32
SET     @group = 7

SELECT
	p.Id,
	FIRST_VALUE(p.Id) OVER(ORDER BY p."Order" DESC)
FROM
	"Position" p
WHERE
	p."Group" = @group

