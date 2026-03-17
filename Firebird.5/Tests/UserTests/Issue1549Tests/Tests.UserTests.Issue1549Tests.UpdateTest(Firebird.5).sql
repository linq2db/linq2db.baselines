-- Firebird.5 Firebird4

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

-- Firebird.5 Firebird4

UPDATE
	"billing_TempReading" "t1"
SET
	"DevReadingTypeId" = (
		SELECT
			"w"."Id"
		FROM
			"billing_DevReadingType" "w"
		WHERE
			"w"."Name" = "t1"."ReadingTypeName" AND "w"."DevTypeId" = "t1"."Devtypeid"
		FETCH NEXT 1 ROWS ONLY
	),
	"Responsibility" = (
		SELECT
			"w_1"."Responsibility"
		FROM
			"billing_DevReadingType" "w_1"
		WHERE
			"w_1"."Name" = "t1"."ReadingTypeName" AND "w_1"."DevTypeId" = "t1"."Devtypeid"
		FETCH NEXT 1 ROWS ONLY
	)

