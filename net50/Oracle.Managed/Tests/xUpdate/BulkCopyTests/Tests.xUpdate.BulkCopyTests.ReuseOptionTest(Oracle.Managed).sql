﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Parent" ("ParentID", "Value1") VALUES (111001,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Child" ("ParentID", "ChildID") VALUES (111001,0)
SELECT * FROM dual

BeforeExecute
RollbackTransaction
