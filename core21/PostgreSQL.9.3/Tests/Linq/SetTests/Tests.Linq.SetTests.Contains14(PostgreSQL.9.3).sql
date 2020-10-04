BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 1 AND p."ParentID" = :ParentID
	)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 1 AND p."ParentID" = :ParentID
	)

