BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	(
		SELECT
			"p"."Value1"
		FROM
			"Parent" "p"
		FETCH NEXT 1 ROWS ONLY
	)
FROM SYSIBM.SYSDUMMY1

