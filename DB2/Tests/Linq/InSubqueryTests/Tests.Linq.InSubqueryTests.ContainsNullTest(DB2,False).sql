BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Parent" "c_1"
			WHERE
				"c_1"."Value1" IS NULL
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

