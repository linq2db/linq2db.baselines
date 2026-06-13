-- YDB Ydb

SELECT
	x.Id as Id,
	x.Country as Country,
	x.`State` as State_1
FROM
	Issue3631Table x
WHERE
	(x.Country, x.`State`) IN (
		SELECT
			(t1.Item1, t1.Item2)
		FROM
			(VALUES
				('US'u,'CA'u), ('US'u,'NY'u)
			) t1(Item1, Item2)
	)

