BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT 
			"p"."Value1"
		FROM
			"Parent" "p"
		FETCH FIRST 1 ROWS ONLY
	)
FROM SYSIBM.SYSDUMMY1

