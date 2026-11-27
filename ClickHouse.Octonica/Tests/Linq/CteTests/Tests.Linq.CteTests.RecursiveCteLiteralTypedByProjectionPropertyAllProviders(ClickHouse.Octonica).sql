-- ClickHouse.Octonica ClickHouse
WITH RECURSIVE cte AS
(
	SELECT
		p.Id as Id,
		toString('Str1') as Str
	FROM
		CteLiteralTypingTable p
	UNION ALL
	SELECT
		t1.Id as Id,
		toString('Str2') as Str
	FROM
		cte t1
			INNER JOIN CteLiteralTypingTable r ON t1.Id = r.Id + 1
)
SELECT
	t2.Id,
	t2.Str
FROM
	cte t2

