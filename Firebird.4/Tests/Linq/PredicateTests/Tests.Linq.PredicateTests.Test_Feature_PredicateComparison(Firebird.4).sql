BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FeatureTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FeatureTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" IS NULL) = ("r"."Zero" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" IS NULL) = ("r"."Null" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" IS NULL) = ("r"."Null" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" IS NULL) <> ("r"."Zero" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" IS NULL) <> ("r"."Null" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" IS NULL) <> ("r"."Null" IS NULL)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	1 = 0

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FeatureTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FeatureTable"';
END

