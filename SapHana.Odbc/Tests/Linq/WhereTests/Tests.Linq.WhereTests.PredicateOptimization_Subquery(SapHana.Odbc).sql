-- SapHana.Odbc SapHanaOdbc

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
				SELECT "p"."Date1" AS "item" FROM DUMMY
				UNION ALL
				SELECT "p"."Date2" FROM DUMMY
				UNION ALL
				SELECT "p"."Date3" FROM DUMMY
				UNION ALL
				SELECT "p"."Date4" FROM DUMMY) "t1"
	) > To_Timestamp('2023-01-01 00:00:00.000')

-- SapHana.Odbc SapHanaOdbc

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
					SELECT "p"."Date1" AS "item" FROM DUMMY
					UNION ALL
					SELECT "p"."Date2" FROM DUMMY
					UNION ALL
					SELECT "p"."Date3" FROM DUMMY
					UNION ALL
					SELECT "p"."Date4" FROM DUMMY) "t1"
		) > "p"."Date1"
			THEN 0
		ELSE 1
	END = 1

