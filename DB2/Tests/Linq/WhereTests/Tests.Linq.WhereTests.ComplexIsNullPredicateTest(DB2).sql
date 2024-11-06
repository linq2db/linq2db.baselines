BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "t1"
			WHERE
				CASE
					WHEN "t1"."MiddleName" = '123' THEN 1
					ELSE 0
				END = CASE
					WHEN "t1"."MiddleName" = '1' THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

