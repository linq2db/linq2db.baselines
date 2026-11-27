-- ClickHouse.MySql ClickHouse
SELECT
	t2.Id,
	t1.ExpressionMethod
FROM
	StringAssociationOwner t2
		LEFT JOIN (
			SELECT
				se.Value as ExpressionMethod,
				ROW_NUMBER() OVER (PARTITION BY se.Id ORDER BY se.Id) as rn,
				se.Id as Id
			FROM
				StringAssociationValue se
		) t1 ON t1.Id = t2.Id AND t1.rn = 1

