﻿BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 3

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
OFFSET :n ROWS

