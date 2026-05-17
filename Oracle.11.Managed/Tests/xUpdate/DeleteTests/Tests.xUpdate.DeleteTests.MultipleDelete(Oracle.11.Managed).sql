-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" c_1
WHERE
	c_1."ParentID" >= 1000

-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Parent" ("ParentID", "Value1") VALUES (1000,NULL)
	INTO "Parent" ("ParentID", "Value1") VALUES (1001,NULL)
SELECT * FROM dual

-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = 1000 AND p."Value1" IS NULL OR p."ParentID" = 1001 AND p."Value1" IS NULL

-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" c_1
WHERE
	c_1."ParentID" >= 1000

