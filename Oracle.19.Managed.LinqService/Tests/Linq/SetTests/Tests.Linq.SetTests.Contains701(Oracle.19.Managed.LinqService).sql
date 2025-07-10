BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 11
DECLARE @Value1 Int32
SET     @Value1 = 11

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" param
					INNER JOIN "Parent" a_Parent ON param."ParentID" = a_Parent."ParentID"
			WHERE
				a_Parent."ParentID" = :ParentID AND a_Parent."Value1" = :Value1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

