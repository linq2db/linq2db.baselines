BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Parent" ("ParentID", "Value1") VALUES (111001,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Child" ("ParentID", "ChildID") VALUES (111001,0)
SELECT * FROM dual

BeforeExecute
DisposeTransaction
