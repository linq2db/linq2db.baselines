-- DuckDB
SELECT
	Power(CAST(r.B + r."C" AS DOUBLE), 2),
	Power(CAST(r."C" AS DOUBLE), CAST(r.B + r."C" AS DOUBLE)),
	Power(CAST(r.B AS DOUBLE), 2) + r."C",
	Power(CAST(r.B - r."C" AS DOUBLE), 2),
	Power(CAST(r."C" AS DOUBLE), CAST(r.B - r."C" AS DOUBLE)),
	Power(CAST(r.B AS DOUBLE), 2) - r."C",
	Power(CAST(r.B * r."C" AS DOUBLE), 2),
	Power(CAST(r."C" AS DOUBLE), CAST(r.B * r."C" AS DOUBLE)),
	Power(CAST(r.B AS DOUBLE), 2) * r."C",
	Power(CAST(r.B // r."C" AS DOUBLE), 2),
	Power(CAST(r."C" AS DOUBLE), CAST(r.B // r."C" AS DOUBLE)),
	Power(CAST(r.B AS DOUBLE), 2) / r."C",
	Power(CAST(-r.B AS DOUBLE), 2),
	-Power(CAST(r.B AS DOUBLE), 2),
	Power(CAST(r."C" AS DOUBLE), Power(CAST(r."C" AS DOUBLE), CAST(r."C" AS DOUBLE))),
	Power(CAST(r.B + r."C" AS DOUBLE), 2)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

