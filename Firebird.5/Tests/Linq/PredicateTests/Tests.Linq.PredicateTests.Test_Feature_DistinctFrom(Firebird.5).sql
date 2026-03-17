-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS DISTINCT FROM "r"."One"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Zero" IS DISTINCT FROM "r"."Zero"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Null" IS DISTINCT FROM "r"."Null"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS DISTINCT FROM "r"."Zero"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS DISTINCT FROM "r"."Null"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Zero" IS DISTINCT FROM "r"."Null"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS NOT DISTINCT FROM "r"."One"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Zero" IS NOT DISTINCT FROM "r"."Zero"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Null" IS NOT DISTINCT FROM "r"."Null"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS NOT DISTINCT FROM "r"."Zero"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."One" IS NOT DISTINCT FROM "r"."Null"

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	"r"."Zero" IS NOT DISTINCT FROM "r"."Null"

