-- SapHana.Native SapHana
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
			) "t1"
		WHERE
			"p"."MiddleName" = "t1"."value" OR "p"."MiddleName" IS NULL AND "t1"."value" IS NULL
	)

-- SapHana.Native SapHana
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
			) "t1"
		WHERE
			"p"."MiddleName" = "t1"."value" OR "p"."MiddleName" IS NULL AND "t1"."value" IS NULL
	)

-- SapHana.Native SapHana
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
			) "t1"
		WHERE
			"p"."MiddleName" = "t1"."value" OR "p"."MiddleName" IS NULL AND "t1"."value" IS NULL
	)

