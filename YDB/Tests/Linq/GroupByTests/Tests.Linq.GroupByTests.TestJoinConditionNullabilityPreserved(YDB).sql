-- YDB Ydb
SELECT
	t1.Prop as Prop
FROM
	MainTable r
		LEFT JOIN (
			SELECT
				a_Ref.Prop as Prop,
				a_Ref_1.Id as Id
			FROM
				Ref1 a_Ref_1
					LEFT JOIN Ref2 a_Ref ON a_Ref_1.Id = a_Ref.FK
		) t1 ON r.FK = t1.Id
WHERE
	r.Id = 1
LIMIT 2

