﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Nvl(p."Value1", p."ParentID"),
	:Value1
FROM
	"Parent" p

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

