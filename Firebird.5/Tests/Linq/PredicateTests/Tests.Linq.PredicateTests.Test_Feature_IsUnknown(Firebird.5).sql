-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."One") IS UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") IS UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") IS UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") IS UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") IS UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") IS UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."One") IS NOT UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") IS NOT UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") IS NOT UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") IS NOT UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") IS NOT UNKNOWN

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") IS NOT UNKNOWN

