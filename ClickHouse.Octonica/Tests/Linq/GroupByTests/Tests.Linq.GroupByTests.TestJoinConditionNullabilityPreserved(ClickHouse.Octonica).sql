-- ClickHouse.Octonica ClickHouse

SELECT
	a_Ref_1.Prop
FROM
	MainTable r
		LEFT JOIN Ref1 a_Ref ON r.FK = a_Ref.Id
		LEFT JOIN Ref2 a_Ref_1 ON a_Ref.Id = a_Ref_1.FK
WHERE
	r.Id = 1
LIMIT 2

