﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @parentId Int32
SET     @parentId = 12

SELECT
	i."Name",
	i."ParentId"
FROM
	"Issue4192TableNullable" i
WHERE
	i."ParentId" = :parentId

