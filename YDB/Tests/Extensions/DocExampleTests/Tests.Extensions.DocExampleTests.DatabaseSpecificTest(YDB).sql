-- YDB Ydb

SELECT /* qb */
	t.PersonID as PersonID,
	t.Diagnosis as Diagnosis
FROM
	Parent t1
		CROSS JOIN Child c_1
		INNER JOIN Patient t ON c_1.ParentID = t.PersonID

