-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
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
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
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
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

