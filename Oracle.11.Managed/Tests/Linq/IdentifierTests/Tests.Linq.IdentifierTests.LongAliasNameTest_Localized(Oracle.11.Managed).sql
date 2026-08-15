-- Oracle.11.Managed Oracle11
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	long親Long子Long孫LongV_1."ParentID",
	long親Long子Long孫LongV_1."Value1"
FROM
	"Parent" long親Long子Long孫LongV_1
		INNER JOIN "Child" long親Long子Long孫LongV ON long親Long子Long孫LongV."ParentID" = long親Long子Long孫LongV_1."ParentID"
WHERE
	long親Long子Long孫LongV_1."ParentID" = :parentId

