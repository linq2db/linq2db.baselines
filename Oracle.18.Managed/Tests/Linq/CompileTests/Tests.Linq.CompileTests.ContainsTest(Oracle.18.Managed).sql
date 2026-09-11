-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN :ParentID IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	CASE
		WHEN :ParentID IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

