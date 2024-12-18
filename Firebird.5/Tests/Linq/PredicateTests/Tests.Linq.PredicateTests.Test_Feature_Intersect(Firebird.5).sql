BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FeatureTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FeatureTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FeatureTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "FeatureTable"
			(
				"Id"       Int     NOT NULL,
				"One"      Int,
				"Zero"     Int,
				"Null"     Int,
				"True"     BOOLEAN,
				"False"    BOOLEAN,
				"BoolNull" BOOLEAN
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "FeatureTable"
(
	"Id",
	"One",
	"Zero",
	"Null",
	"True",
	"False",
	"BoolNull"
)
SELECT 1,1,0,NULL,TRUE,FALSE,NULL FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."One"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."One" = "r"."One" AND "r"."One" IS NOT NULL AND "r"."One" IS NOT NULL OR
					"r"."One" IS NULL AND "r"."One" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."Zero"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."Zero" = "r"."Zero" AND "r"."Zero" IS NOT NULL AND "r"."Zero" IS NOT NULL OR
					"r"."Zero" IS NULL AND "r"."Zero" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."Null"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."Null" = "r"."Null" AND "r"."Null" IS NOT NULL AND "r"."Null" IS NOT NULL OR
					"r"."Null" IS NULL AND "r"."Null" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."One"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."One" = "r"."Zero" AND "r"."One" IS NOT NULL AND "r"."Zero" IS NOT NULL OR
					"r"."One" IS NULL AND "r"."Zero" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."One"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."One" = "r"."Null" AND "r"."One" IS NOT NULL AND "r"."Null" IS NOT NULL OR
					"r"."One" IS NULL AND "r"."Null" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."Zero"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."Zero" = "r"."Null" AND "r"."Zero" IS NOT NULL AND "r"."Null" IS NOT NULL OR
					"r"."Zero" IS NULL AND "r"."Null" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."One"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."One" = "r"."One" AND "r"."One" IS NOT NULL AND "r"."One" IS NOT NULL OR
					"r"."One" IS NULL AND "r"."One" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."Zero"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."Zero" = "r"."Zero" AND "r"."Zero" IS NOT NULL AND "r"."Zero" IS NOT NULL OR
					"r"."Zero" IS NULL AND "r"."Zero" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."Null"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."Null" = "r"."Null" AND "r"."Null" IS NOT NULL AND "r"."Null" IS NOT NULL OR
					"r"."Null" IS NULL AND "r"."Null" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."One"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."One" = "r"."Zero" AND "r"."One" IS NOT NULL AND "r"."Zero" IS NOT NULL OR
					"r"."One" IS NULL AND "r"."Zero" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."One"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."One" = "r"."Null" AND "r"."One" IS NOT NULL AND "r"."Null" IS NOT NULL OR
					"r"."One" IS NULL AND "r"."Null" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."Zero"
		FROM rdb$database
		WHERE
			EXISTS(
				SELECT
					1
				FROM rdb$database
				WHERE
					"r"."Zero" = "r"."Null" AND "r"."Zero" IS NOT NULL AND "r"."Null" IS NOT NULL OR
					"r"."Zero" IS NULL AND "r"."Null" IS NULL
			)
	)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FeatureTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FeatureTable"';
END

