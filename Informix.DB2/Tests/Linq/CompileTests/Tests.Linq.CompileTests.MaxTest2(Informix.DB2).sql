﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	MAX(c_1.ParentID)
FROM
	Child c_1
WHERE
	c_1.ParentID = @p

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = -1

SELECT
	MAX(c_1.ParentID)
FROM
	Child c_1
WHERE
	c_1.ParentID = @p

