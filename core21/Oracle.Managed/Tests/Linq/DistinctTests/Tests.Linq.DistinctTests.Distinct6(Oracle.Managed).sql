﻿BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 0
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Nvl(p."Value1", p."ParentID" + :ParentID),
	:Value1
FROM
	"Parent" p

