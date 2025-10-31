-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."One") IS FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") IS FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") IS FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") IS FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") IS FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") IS FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."One") IS NOT FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") IS NOT FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") IS NOT FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") IS NOT FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") IS NOT FALSE

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") IS NOT FALSE

