-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"AsyncDataTable" c_1
			WHERE
				c_1."Id" = :p
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

