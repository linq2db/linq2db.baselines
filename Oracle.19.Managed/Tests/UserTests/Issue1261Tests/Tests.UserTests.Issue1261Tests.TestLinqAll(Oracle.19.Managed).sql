BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" x
			WHERE
				x."ParentID" = 1 AND NOT (x."ChildID" = 11 AND x."GrandChildID" = 777)
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" x
			WHERE
				x."ParentID" = 1 AND NOT (x."GrandChildID" = 777 AND x."ChildID" = 11)
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

