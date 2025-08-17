BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN :ParentID IN (
			SELECT
				p."ParentID"
			FROM
				"Parent" p
			WHERE
				p."ParentID" = 1
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN :ParentID IN (
			SELECT
				p."ParentID"
			FROM
				"Parent" p
			WHERE
				p."ParentID" = 1
		)
			THEN True
		ELSE False
	END

