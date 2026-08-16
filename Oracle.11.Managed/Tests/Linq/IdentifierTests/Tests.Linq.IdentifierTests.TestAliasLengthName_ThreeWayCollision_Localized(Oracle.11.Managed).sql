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

