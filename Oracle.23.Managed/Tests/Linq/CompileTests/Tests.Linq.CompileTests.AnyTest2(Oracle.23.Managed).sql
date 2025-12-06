-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :p
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :p
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

