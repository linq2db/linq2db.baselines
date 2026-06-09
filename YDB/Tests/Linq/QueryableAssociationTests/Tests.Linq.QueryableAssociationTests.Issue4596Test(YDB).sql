-- YDB Ydb

SELECT
	m_1.Id as Id,
	m_1.C1 as C1,
	d.Id as Id_1,
	d.FormId as FormId,
	d.OrderIndex as OrderIndex,
	d.Name1 as Name1,
	d.Name2 as Name2,
	d.Name3 as Name3
FROM
	(
		SELECT
			t1.Id as Id,
			t1.C1 as C1
		FROM
			Issue4596Form t1
		LIMIT 1
	) m_1
		INNER JOIN Issue4596Item d ON d.FormId = m_1.Id
ORDER BY
	CASE
		WHEN m_1.C1 = 'T'u THEN d.OrderIndex
		ELSE 0
	END,
	CASE
		WHEN m_1.C1 <> 'T'u THEN d.Name1
		ELSE ''u
	END,
	CASE
		WHEN m_1.C1 <> 'T'u THEN d.Name2
		ELSE ''u
	END,
	CASE
		WHEN m_1.C1 <> 'T'u THEN d.Name3
		ELSE ''u
	END

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.C1 as C1
FROM
	Issue4596Form t1
LIMIT 1

