BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CAST('123' AS Int DEFAULT NULL ON CONVERSION ERROR)
FROM SYS.DUAL

