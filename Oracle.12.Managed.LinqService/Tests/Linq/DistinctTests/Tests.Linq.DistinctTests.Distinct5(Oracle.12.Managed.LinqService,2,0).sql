﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", MOD(p."ParentID", 2)),
	:Value1
FROM
	"Parent" p

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", MOD(p."ParentID", 2)),
	:Value1
FROM
	"Parent" p

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

