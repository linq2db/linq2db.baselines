-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Parent" ("ParentID", "Value1") VALUES (1111,1111)
	INTO "Parent" ("ParentID", "Value1") VALUES (2111,2111)
	INTO "Parent" ("ParentID", "Value1") VALUES (3111,3111)
	INTO "Parent" ("ParentID", "Value1") VALUES (4111,4111)
SELECT * FROM dual

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

