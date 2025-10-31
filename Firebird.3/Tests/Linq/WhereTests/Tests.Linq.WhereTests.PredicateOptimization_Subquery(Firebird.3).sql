-- Firebird.3 Firebird3

SELECT
	"p"."Id",
	"p"."Date1",
	"p"."Date2",
	"p"."Date3",
	"p"."Date4"
FROM
	"WithMultipleDates" "p"
WHERE
	(
		SELECT
			MAX("t1"."item")
		FROM
			(
				SELECT "p"."Date1" AS "item" FROM rdb$database
				UNION ALL
				SELECT "p"."Date2" FROM rdb$database
				UNION ALL
				SELECT "p"."Date3" FROM rdb$database
				UNION ALL
				SELECT "p"."Date4" FROM rdb$database) "t1"
	) > CAST('2023-01-01' AS TimeStamp)

-- Firebird.3 Firebird3

SELECT
	"p"."Id",
	"p"."Date1",
	"p"."Date2",
	"p"."Date3",
	"p"."Date4"
FROM
	"WithMultipleDates" "p"
WHERE
	CASE
		WHEN (
			SELECT
				MAX("t1"."item")
			FROM
				(
					SELECT "p"."Date1" AS "item" FROM rdb$database
					UNION ALL
					SELECT "p"."Date2" FROM rdb$database
					UNION ALL
					SELECT "p"."Date3" FROM rdb$database
					UNION ALL
					SELECT "p"."Date4" FROM rdb$database) "t1"
		) > "p"."Date1"
			THEN FALSE
		ELSE TRUE
	END

