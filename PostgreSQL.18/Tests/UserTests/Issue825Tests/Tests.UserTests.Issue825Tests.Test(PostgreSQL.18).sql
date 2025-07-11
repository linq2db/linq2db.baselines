﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @userId Integer -- Int32
SET     @userId = 32
DECLARE @childId Integer -- Int32
SET     @childId = 32

SELECT
	child_1."ParentID"
FROM
	"Parent" child_1
		INNER JOIN "Child" "a_Childs" ON child_1."ParentID" = "a_Childs"."ParentID"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"GrandChild" permission
		WHERE
			child_1."ParentID" = permission."ParentID" AND permission."ChildID" = :userId
	) AND
	"a_Childs"."ChildID" = :childId

