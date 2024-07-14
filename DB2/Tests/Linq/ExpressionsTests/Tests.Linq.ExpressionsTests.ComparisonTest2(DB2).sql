BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @personId Integer(4) -- Int32
SET     @personId = 0
DECLARE @personId_1 Integer(4) -- Int32
SET     @personId_1 = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT
						"t6".COUNT_1,
						"t6".COUNT_1_1
					FROM
						(
							SELECT
								(
									SELECT
										COUNT(*)
									FROM
										"Patient" "t2"
									WHERE
										"t2"."PersonID" = @personId AND "t2"."PersonID" NOT IN (
											SELECT
												"t3"."PersonID"
											FROM
												"Patient" "t3"
											WHERE
												"t3"."PersonID" = @personId_1
										)
								) as COUNT_1,
								(
									SELECT
										COUNT(*)
									FROM
										"Patient" "t4"
									WHERE
										"t4"."PersonID" = @personId_1 AND "t4"."PersonID" NOT IN (
											SELECT
												"t5"."PersonID"
											FROM
												"Patient" "t5"
											WHERE
												"t5"."PersonID" = @personId
										)
								) as COUNT_1_1
							FROM
								"Person" "t1"
						) "t6"
				) "t7"
			WHERE
				"t7".COUNT_1 = 0 AND "t7".COUNT_1_1 = 0
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

