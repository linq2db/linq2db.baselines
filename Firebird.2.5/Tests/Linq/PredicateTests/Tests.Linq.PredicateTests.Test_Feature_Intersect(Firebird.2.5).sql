-- Firebird.2.5 Firebird

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
			)
	)

-- Firebird.2.5 Firebird

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
			)
	)

-- Firebird.2.5 Firebird

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
			)
	)

-- Firebird.2.5 Firebird

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
					"r"."One" = "r"."Zero" OR "r"."One" IS NULL AND "r"."Zero" IS NULL
			)
	)

-- Firebird.2.5 Firebird

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
					"r"."One" = "r"."Null" OR "r"."One" IS NULL AND "r"."Null" IS NULL
			)
	)

-- Firebird.2.5 Firebird

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
					"r"."Zero" = "r"."Null" OR "r"."Zero" IS NULL AND "r"."Null" IS NULL
			)
	)

-- Firebird.2.5 Firebird

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
			)
	)

-- Firebird.2.5 Firebird

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
			)
	)

-- Firebird.2.5 Firebird

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
			)
	)

-- Firebird.2.5 Firebird

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
					"r"."One" = "r"."Zero" OR "r"."One" IS NULL AND "r"."Zero" IS NULL
			)
	)

-- Firebird.2.5 Firebird

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
					"r"."One" = "r"."Null" OR "r"."One" IS NULL AND "r"."Null" IS NULL
			)
	)

-- Firebird.2.5 Firebird

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
					"r"."Zero" = "r"."Null" OR "r"."Zero" IS NULL AND "r"."Null" IS NULL
			)
	)

