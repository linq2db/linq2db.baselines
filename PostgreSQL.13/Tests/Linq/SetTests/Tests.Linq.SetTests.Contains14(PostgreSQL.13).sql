-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

