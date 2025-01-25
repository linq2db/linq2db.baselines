BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" "x"
			WHERE
				"x"."ParentID" = 1 AND NOT ("x"."ChildID" = 11 AND "x"."GrandChildID" = 777)
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" "x"
			WHERE
				"x"."ParentID" = 1 AND NOT ("x"."GrandChildID" = 777 AND "x"."ChildID" = 11)
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

