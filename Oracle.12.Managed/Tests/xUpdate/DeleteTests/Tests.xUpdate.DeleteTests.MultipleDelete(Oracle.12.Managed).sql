BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" c_1
WHERE
	c_1."ParentID" >= 1000

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Parent" ("ParentID", "Value1") VALUES (1000,NULL)
	INTO "Parent" ("ParentID", "Value1") VALUES (1001,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = 1000 AND p."Value1" IS NULL OR p."ParentID" = 1001 AND p."Value1" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" c_1
WHERE
	c_1."ParentID" >= 1000

