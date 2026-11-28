-- Oracle.11.Managed Oracle11
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	long親Long子Long孫LongV_2."ParentID",
	long親Long子Long孫LongV_2."Value1"
FROM
	"Parent" long親Long子Long孫LongV_2
		INNER JOIN "Child" long親Long子Long孫LongV ON long親Long子Long孫LongV."ParentID" = long親Long子Long孫LongV_2."ParentID"
		INNER JOIN "GrandChild" long親Long子Long孫LongV_1 ON long親Long子Long孫LongV_1."ChildID" = long親Long子Long孫LongV."ChildID"
WHERE
	long親Long子Long孫LongV_2."ParentID" = :parentId

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1

