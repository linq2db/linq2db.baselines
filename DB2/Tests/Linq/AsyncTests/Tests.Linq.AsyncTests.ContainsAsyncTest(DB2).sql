-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

SELECT
	CASE
		WHEN CAST(@ID AS Int) IN (
			SELECT
				"t1"."PersonID"
			FROM
				"Person" "t1"
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

