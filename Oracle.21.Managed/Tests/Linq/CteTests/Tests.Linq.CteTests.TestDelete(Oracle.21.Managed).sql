BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE
(
	WITH CTE_1 ("ParentID")
	AS
	(
		SELECT
			c_1."ParentID"
		FROM
			"CteChild" c_1
		WHERE
			MOD(c_1."ParentID", 2) = 0
	)
	SELECT
		*
	FROM
		"CteChild" t1
	WHERE
		EXISTS(
			SELECT
				ct."ParentID"
			FROM
				"CteChild" c_2
					INNER JOIN CTE_1 ct ON ct."ParentID" = c_2."ParentID"
			WHERE
				t1."ChildID" = c_2."ChildID" AND t1."ParentID" = c_2."ParentID"
		)
)

