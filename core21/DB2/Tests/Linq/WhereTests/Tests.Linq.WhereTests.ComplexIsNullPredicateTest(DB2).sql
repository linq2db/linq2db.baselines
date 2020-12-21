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
				CASE
					WHEN "_"."MiddleName" = '123'
						THEN 1
					ELSE 0
				END = (CASE
					WHEN "_"."MiddleName" = '1'
						THEN 'test'
					ELSE "_"."MiddleName"
				END = 'test')
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

