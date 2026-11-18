-- Firebird.2.5 Firebird
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	(
		SELECT
			MAX("t1"."item")
		FROM
			(
				SELECT "p"."PersonID" AS "item" FROM rdb$database
				UNION ALL
				SELECT 2 FROM rdb$database) "t1"
	) = 2

-- Firebird.2.5 Firebird
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	(
		SELECT
			MIN("t1"."item")
		FROM
			(
				SELECT "p"."PersonID" AS "item" FROM rdb$database
				UNION ALL
				SELECT 2 FROM rdb$database) "t1"
	) = 2

