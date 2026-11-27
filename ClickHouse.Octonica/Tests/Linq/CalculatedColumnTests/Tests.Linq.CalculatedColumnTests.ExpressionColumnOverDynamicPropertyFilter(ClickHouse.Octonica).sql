-- ClickHouse.Octonica ClickHouse
SELECT
	p.AGE,
	p.NAME,
	bitAnd(p.OPTIONS, 15)
FROM
	PersonOptions p
WHERE
	bitAnd(p.OPTIONS, 15) = 4 OR bitAnd(p.OPTIONS, 15) = 5

