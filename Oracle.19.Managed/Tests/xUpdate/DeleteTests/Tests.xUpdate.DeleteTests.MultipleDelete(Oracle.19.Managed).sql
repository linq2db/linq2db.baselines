﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" >= 1000

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Parent" ("ParentID", "Value1") VALUES (1000,NULL)
	INTO "Parent" ("ParentID", "Value1") VALUES (1001,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	(t1."ParentID" = 1000 AND t1."Value1" IS NULL OR t1."ParentID" = 1001 AND t1."Value1" IS NULL)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" >= 1000

