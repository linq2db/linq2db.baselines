﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 12

SELECT
	i.Name,
	i.ParentId
FROM
	Issue4192TableNullable i
WHERE
	i.ParentId = @parentId

