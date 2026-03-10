-- Firebird.4 Firebird4

UPDATE
	"billing_TempReading"
SET
	"DevReadingTypeId" = (
		SELECT
			"drt_1"."Id"
		FROM
			"billing_TempReading" "tr_1"
				INNER JOIN "billing_DevReadingType" "drt_1" ON "drt_1"."Name" = "tr_1"."ReadingTypeName" AND "drt_1"."DevTypeId" = "tr_1"."Devtypeid"
		WHERE
			"billing_TempReading"."id" = "tr_1"."id"
	),
	"Responsibility" = (
		SELECT
			"drt_2"."Responsibility"
		FROM
			"billing_TempReading" "tr_2"
				INNER JOIN "billing_DevReadingType" "drt_2" ON "drt_2"."Name" = "tr_2"."ReadingTypeName" AND "drt_2"."DevTypeId" = "tr_2"."Devtypeid"
		WHERE
			"billing_TempReading"."id" = "tr_2"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"billing_TempReading" "tr"
				INNER JOIN "billing_DevReadingType" "drt" ON "drt"."Name" = "tr"."ReadingTypeName" AND "drt"."DevTypeId" = "tr"."Devtypeid"
		WHERE
			"billing_TempReading"."id" = "tr"."id"
	)

-- Firebird.4 Firebird4

UPDATE
	"billing_TempReading"
SET
	"DevReadingTypeId" = (
		SELECT
			"t2"."Id"
		FROM
			"billing_TempReading" "t3"
				LEFT JOIN LATERAL (
					SELECT
						"w"."Id"
					FROM
						"billing_DevReadingType" "w"
					WHERE
						"w"."Name" = "t3"."ReadingTypeName" AND "w"."DevTypeId" = "t3"."Devtypeid"
					FETCH NEXT 1 ROWS ONLY
				) "t2" ON 1=1
		WHERE
			"billing_TempReading"."id" = "t3"."id"
	),
	"Responsibility" = (
		SELECT
			"t4"."Responsibility"
		FROM
			"billing_TempReading" "t5"
				LEFT JOIN LATERAL (
					SELECT
						"w_1"."Responsibility"
					FROM
						"billing_DevReadingType" "w_1"
					WHERE
						"w_1"."Name" = "t5"."ReadingTypeName" AND "w_1"."DevTypeId" = "t5"."Devtypeid"
					FETCH NEXT 1 ROWS ONLY
				) "t4" ON 1=1
		WHERE
			"billing_TempReading"."id" = "t5"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"billing_TempReading" "t1"
		WHERE
			"billing_TempReading"."id" = "t1"."id"
	)

