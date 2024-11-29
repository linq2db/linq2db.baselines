BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Person" "t1"
			WHERE
				"t1"."MiddleName" <> "t1"."LastName" OR "t1"."MiddleName" IS NULL
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

