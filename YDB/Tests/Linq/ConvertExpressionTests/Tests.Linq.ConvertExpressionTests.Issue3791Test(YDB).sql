-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.OtherId as OtherId,
	a_Association.Id as Id_1
FROM
	Issue3791Table t1
		LEFT JOIN Issue3791GuidTable a_Association ON t1.OtherId = Unwrap(CAST(a_Association.Id AS Text))

