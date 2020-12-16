BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" x
			WHERE
				x."ParentID" = 1 AND ((x."ChildID" <> 11 OR x."ChildID" IS NULL) OR (x."GrandChildID" <> 777 OR x."GrandChildID" IS NULL))
		))
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" x
			WHERE
				x."ParentID" = 1 AND ((x."GrandChildID" <> 777 OR x."GrandChildID" IS NULL) OR (x."ChildID" <> 11 OR x."ChildID" IS NULL))
		))
			THEN True
		ELSE False
	END

