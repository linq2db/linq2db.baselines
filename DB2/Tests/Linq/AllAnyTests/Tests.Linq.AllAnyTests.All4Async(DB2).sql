BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				1
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" <= 3
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

