-- YDB Ydb
DECLARE $take Int32
SET     $take = 10
DECLARE $skip Int32
SET     $skip = 100

SELECT
	m_1.Id as Id,
	m_1.Id_1 as Id_1,
	d_1.Id as Id_2,
	d_1.SubOrderId as SubOrderId,
	d_1.Code as Code,
	d_1.`Date` as Date_1,
	d_1.IsActive as IsActive
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			t2.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					t1.Id as Id
				FROM
					(
						SELECT
							x.Id as Id
						FROM
							`Order` x
						WHERE
							x.Name LIKE 'cat%'u ESCAPE '~'s
						ORDER BY
							x.Id
						LIMIT $take OFFSET $skip 
					) t1
			) t2
				INNER JOIN SubOrder d ON t2.Id = d.OrderId
	) m_1
		INNER JOIN SubOrderDetail d_1 ON m_1.Id = d_1.SubOrderId

-- YDB Ydb
DECLARE $take Int32
SET     $take = 10
DECLARE $skip Int32
SET     $skip = 100

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.OrderId as OrderId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			(
				SELECT
					x.Id as Id
				FROM
					`Order` x
				WHERE
					x.Name LIKE 'cat%'u ESCAPE '~'s
				ORDER BY
					x.Id
				LIMIT $take OFFSET $skip 
			) t1
	) m_1
		INNER JOIN SubOrder d ON m_1.Id = d.OrderId

-- YDB Ydb
DECLARE $take Int32
SET     $take = 10
DECLARE $skip Int32
SET     $skip = 100

SELECT
	x.Id as Id,
	x.Name as Name
FROM
	`Order` x
WHERE
	x.Name LIKE 'cat%'u ESCAPE '~'s
ORDER BY
	x.Id
LIMIT $take OFFSET $skip 

