BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	CASE
		WHEN :p_1 IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p_1 Int32
SET     @p_1 = -1

SELECT
	CASE
		WHEN :p_1 IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

