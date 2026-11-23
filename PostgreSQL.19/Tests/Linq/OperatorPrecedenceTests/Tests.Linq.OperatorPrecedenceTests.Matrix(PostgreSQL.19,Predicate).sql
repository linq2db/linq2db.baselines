-- PostgreSQL.19 PostgreSQL12
SELECT
	CASE
		WHEN r."A" + r."B" = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r."A" + r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" + r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" BETWEEN r."B" + r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" + r."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."S", '') || (r."A" + r."B")::text LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" + r."B" <= r."C" AND r."B" < r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" + r."B" IS DISTINCT FROM r."N" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS DISTINCT FROM r."A" + r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" - r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" + ~r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" - r."B" = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r."A" - r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" - r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" BETWEEN r."B" - r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" - r."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."S", '') || (r."A" - r."B")::text LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" - r."B" <= r."C" AND r."B" < r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" - r."B" IS DISTINCT FROM r."N" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS DISTINCT FROM r."A" - r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" + r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" - ~r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" * r."B" = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r."A" * r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" * r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" BETWEEN r."B" * r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" * r."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."S", '') || (r."A" * r."B")::text LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" * r."B" <= r."C" AND r."B" < r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" * r."B" IS DISTINCT FROM r."N" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS DISTINCT FROM r."A" * r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" * -r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" * ~r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" / r."B" = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r."A" / r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" / r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" BETWEEN r."B" / r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" / r."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."S", '') || (r."A" / r."B")::text LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" / r."B" <= r."C" AND r."B" < r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" / r."B" IS DISTINCT FROM r."N" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS DISTINCT FROM r."A" / r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" / -r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Floor(r."A"::decimal % r."B")::Int = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < Floor(r."A"::decimal % r."B")::Int THEN 1
		ELSE 0
	END,
	CASE
		WHEN Floor(r."A"::decimal % r."B")::Int BETWEEN r."C" AND r."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" BETWEEN Floor(r."B"::decimal % r."C")::Int AND r."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Floor(r."A"::decimal % r."B")::Int IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."S", '') || Floor(r."A"::decimal % r."B")::Int::text LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Floor(r."A"::decimal % r."B")::Int <= r."C" AND r."B" < r."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Floor(r."A"::decimal % r."B")::Int IS DISTINCT FROM r."N"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS DISTINCT FROM Floor(r."A"::decimal % r."B")::Int
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Floor(r."A"::decimal % -r."B")::Int BETWEEN r."C" AND r."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Floor(r."A"::decimal % ~r."B")::Int BETWEEN r."C" AND r."A"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" & r."B" = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r."A" & r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" & r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" BETWEEN r."B" & r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" & r."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."S", '') || (r."A" & r."B")::text LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" & r."B" <= r."C" AND r."B" < r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" & r."B" IS DISTINCT FROM r."N" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS DISTINCT FROM r."A" & r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" & -r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" & ~r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | r."B" = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r."A" | r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" BETWEEN r."B" | r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | r."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."S", '') || (r."A" | r."B")::text LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | r."B" <= r."C" AND r."B" < r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | r."B" IS DISTINCT FROM r."N" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS DISTINCT FROM r."A" | r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | -r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | -r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | ~r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" | ~r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # r."B" = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r."A" # r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" BETWEEN r."B" # r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # r."B" IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r."S", '') || (r."A" # r."B")::text LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # r."B" <= r."C" AND r."B" < r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # r."B" IS DISTINCT FROM r."N" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."N" IS DISTINCT FROM r."A" # r."B" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # -r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # -r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # ~r."N" IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."A" # ~r."B" BETWEEN r."C" AND r."A" THEN 1
		ELSE 0
	END,
	r."A" * -r."B" + r."C",
	(r."A" * ~r."B") + r."C",
	r."A" * -r."B" - r."C",
	(r."A" * ~r."B") - r."C",
	(r."A" * -r."B") * r."C",
	(r."A" * ~r."B") * r."C",
	r."A" * -r."B" + r."C",
	(r."A" * ~r."B") + r."C",
	CASE
		WHEN -r."A" = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" = -r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r."A" = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" = ~r."A" THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	CASE
		WHEN -5 = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

