-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."One") = UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") = UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") = UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") = UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") = UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") = UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."One") <> UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Zero") <> UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Null" = "r"."Null") <> UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Zero") <> UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."One" = "r"."Null") <> UNKNOWN

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	("r"."Zero" = "r"."Null") <> UNKNOWN

