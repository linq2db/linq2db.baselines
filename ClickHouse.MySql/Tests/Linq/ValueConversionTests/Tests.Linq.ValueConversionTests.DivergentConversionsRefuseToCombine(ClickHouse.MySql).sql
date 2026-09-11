-- ClickHouse.MySql ClickHouse
INSERT INTO DivergentConversionRow
(
	Id,
	Doubled,
	Tripled,
	Plain
)
VALUES
(
	1,
	20,
	30,
	10
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Doubled,
	r.Tripled,
	r.Plain,
	r.Doubled + r.Doubled,
	r.Plain + r.Plain,
	r.Doubled + 10
FROM
	DivergentConversionRow r
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	DivergentConversionRow r
WHERE
	r.Doubled = 20

