BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 3

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				1
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" <= @n
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

