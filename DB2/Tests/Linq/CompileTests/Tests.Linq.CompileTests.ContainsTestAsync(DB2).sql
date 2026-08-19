-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN CAST(@ParentID AS Int) IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = -1

SELECT
	CASE
		WHEN CAST(@ParentID AS Int) IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

