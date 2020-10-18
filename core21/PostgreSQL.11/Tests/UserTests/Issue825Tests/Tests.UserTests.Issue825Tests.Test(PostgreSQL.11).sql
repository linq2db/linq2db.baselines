BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @childId Integer -- Int32
SET     @childId = 32
DECLARE @userId Integer -- Int32
SET     @userId = 32

SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
WHERE
	c_1."ChildID" = :childId AND (EXISTS(
		SELECT
			*
		FROM
			"GrandChild" permission
		WHERE
			p."ParentID" = permission."ParentID" AND permission."ChildID" = :userId
	))

