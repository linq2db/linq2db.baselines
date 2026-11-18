-- Firebird.5 Firebird4
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "MiddleName" AS "value" FROM "Person" WHERE "PersonID" = 4
			) "t1"("value")
		WHERE
			"p"."MiddleName" = "t1"."value" OR "p"."MiddleName" IS NULL AND "t1"."value" IS NULL
	)

-- Firebird.5 Firebird4
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "MiddleName" AS "value" FROM "Person" WHERE "PersonID" = 4
			) "t1"("value")
		WHERE
			"p"."MiddleName" = "t1"."value" OR "p"."MiddleName" IS NULL AND "t1"."value" IS NULL
	)

-- Firebird.5 Firebird4
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "MiddleName" AS "value" FROM "Person" WHERE "PersonID" = 4
			) "t1"("value")
		WHERE
			"p"."MiddleName" = "t1"."value" OR "p"."MiddleName" IS NULL AND "t1"."value" IS NULL
	)

