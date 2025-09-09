BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

UPDATE
	"billing_TempReading"
SET
	"DevReadingTypeId" = drt."Id",
	"Responsibility" = drt."Responsibility"
FROM
	"billing_DevReadingType" drt
WHERE
	drt."Name" = "billing_TempReading"."ReadingTypeName" AND
	drt."DevTypeId" = "billing_TempReading"."Devtypeid"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

UPDATE
	"billing_TempReading"
SET
	"DevReadingTypeId" = (
		SELECT
			w."Id"
		FROM
			"billing_DevReadingType" w
		WHERE
			w."Name" = "billing_TempReading"."ReadingTypeName" AND
			w."DevTypeId" = "billing_TempReading"."Devtypeid"
		LIMIT 1
	),
	"Responsibility" = (
		SELECT
			w_1."Responsibility"
		FROM
			"billing_DevReadingType" w_1
		WHERE
			w_1."Name" = "billing_TempReading"."ReadingTypeName" AND
			w_1."DevTypeId" = "billing_TempReading"."Devtypeid"
		LIMIT 1
	)

