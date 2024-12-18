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
	("r"."One" = "r"."One") IS UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") IS UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") IS UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") IS UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") IS UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") IS UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."One") IS NOT UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") IS NOT UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") IS NOT UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") IS NOT UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") IS NOT UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") IS NOT UNKNOWN

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FeatureTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FeatureTable"';
END

