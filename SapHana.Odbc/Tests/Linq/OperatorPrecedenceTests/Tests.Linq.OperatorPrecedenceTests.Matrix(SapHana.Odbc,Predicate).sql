-- SapHana.Odbc SapHanaOdbc
SELECT
	CASE
		WHEN "r"."A" + "r"."B" = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" < "r"."A" + "r"."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" BETWEEN "r"."C" AND "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" BETWEEN "r"."B" + "r"."C" AND "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Coalesce("r"."S", '') || CAST("r"."A" + "r"."B" AS NVarChar(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" <= "r"."C" AND "r"."B" < "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."A" + "r"."B"
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."N"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."N"
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."A" + "r"."B"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" - "r"."B" = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" < "r"."A" - "r"."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" - "r"."B" BETWEEN "r"."C" AND "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" BETWEEN "r"."B" - "r"."C" AND "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" - "r"."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Coalesce("r"."S", '') || CAST("r"."A" - "r"."B" AS NVarChar(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" - "r"."B" <= "r"."C" AND "r"."B" < "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."A" - "r"."B"
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."N"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."N"
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."A" - "r"."B"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" * "r"."B" = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" < "r"."A" * "r"."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" * "r"."B" BETWEEN "r"."C" AND "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" BETWEEN "r"."B" * "r"."C" AND "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" * "r"."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Coalesce("r"."S", '') || CAST("r"."A" * "r"."B" AS NVarChar(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" * "r"."B" <= "r"."C" AND "r"."B" < "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."A" * "r"."B"
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."N"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."N"
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."A" * "r"."B"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST("r"."A" / "r"."B" AS Integer) = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" < CAST("r"."A" / "r"."B" AS Integer) THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST("r"."A" / "r"."B" AS Integer) BETWEEN "r"."C" AND "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" BETWEEN CAST("r"."B" / "r"."C" AS Integer) AND "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST("r"."A" / "r"."B" AS Integer) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Coalesce("r"."S", '') || CAST(CAST("r"."A" / "r"."B" AS Integer) AS NVarChar(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST("r"."A" / "r"."B" AS Integer) <= "r"."C" AND "r"."B" < "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				CAST("r"."A" / "r"."B" AS Integer)
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."N"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."N"
			FROM DUMMY
			INTERSECT
			SELECT
				CAST("r"."A" / "r"."B" AS Integer)
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN MOD("r"."A", "r"."B") = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" < MOD("r"."A", "r"."B") THEN 1
		ELSE 0
	END,
	CASE
		WHEN MOD("r"."A", "r"."B") BETWEEN "r"."C" AND "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" BETWEEN MOD("r"."B", "r"."C") AND "r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN MOD("r"."A", "r"."B") IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Coalesce("r"."S", '') || CAST(MOD("r"."A", "r"."B") AS NVarChar(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN MOD("r"."A", "r"."B") <= "r"."C" AND "r"."B" < "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				MOD("r"."A", "r"."B")
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."N"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."N"
			FROM DUMMY
			INTERSECT
			SELECT
				MOD("r"."A", "r"."B")
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITAND("r"."A", "r"."B") = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" < BITAND("r"."A", "r"."B") THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITAND("r"."A", "r"."B") BETWEEN "r"."C" AND "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" BETWEEN BITAND("r"."B", "r"."C") AND "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITAND("r"."A", "r"."B") IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Coalesce("r"."S", '') || CAST(BITAND("r"."A", "r"."B") AS NVarChar(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITAND("r"."A", "r"."B") <= "r"."C" AND "r"."B" < "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				BITAND("r"."A", "r"."B")
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."N"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."N"
			FROM DUMMY
			INTERSECT
			SELECT
				BITAND("r"."A", "r"."B")
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" - BITAND("r"."A", "r"."B") = "r"."C"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" < "r"."A" + "r"."B" - BITAND("r"."A", "r"."B")
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" - BITAND("r"."A", "r"."B") BETWEEN "r"."C" AND "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" BETWEEN "r"."B" + "r"."C" - BITAND("r"."B", "r"."C") AND "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" - BITAND("r"."A", "r"."B") IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Coalesce("r"."S", '') || CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") AS NVarChar(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" - BITAND("r"."A", "r"."B") <= "r"."C" AND "r"."B" < "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."A" + "r"."B" - BITAND("r"."A", "r"."B")
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."N"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."N"
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."A" + "r"."B" - BITAND("r"."A", "r"."B")
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2 = "r"."C"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" < "r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2 BETWEEN "r"."C" AND "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" BETWEEN "r"."B" + "r"."C" - BITAND("r"."B", "r"."C") * 2 AND "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2 IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Coalesce("r"."S", '') || CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2 AS NVarChar(10))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2 <= "r"."C" AND "r"."B" < "r"."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."N"
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				"r"."N"
			FROM DUMMY
			INTERSECT
			SELECT
				"r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2
			FROM DUMMY
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r"."A" = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" = -"r"."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITNOT("r"."A") = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" = BITNOT("r"."A") THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	CASE
		WHEN -5 = "r"."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."C" = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

