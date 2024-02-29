BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "_"
			WHERE
				("_"."FirstName" = "_"."FirstName") <> CASE
					WHEN "_"."MiddleName" <> "_"."LastName"
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

