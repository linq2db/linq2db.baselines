﻿BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @parentId Int32
SET     @parentId = 12

SELECT
	i."Name",
	i."ParentId"
FROM
	"Issue4192TableNullable" i
WHERE
	i."ParentId" = :parentId

