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
WHERE
	("r"."One" = "r"."One") = UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") = UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") = UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") = UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") = UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") = UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."One") <> UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") <> UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") <> UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") <> UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") <> UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") <> UNKNOWN = TRUE

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FeatureTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FeatureTable"';
END

