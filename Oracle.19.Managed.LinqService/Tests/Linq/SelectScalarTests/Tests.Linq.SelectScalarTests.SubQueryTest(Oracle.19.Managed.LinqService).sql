BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	(
		SELECT
			p."Value1"
		FROM
			"Parent" p
		FETCH NEXT 1 ROWS ONLY
	)
FROM SYS.DUAL

