BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 1

SELECT
	CASE
		WHEN @p_1 IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = -1

SELECT
	CASE
		WHEN @p_1 IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

