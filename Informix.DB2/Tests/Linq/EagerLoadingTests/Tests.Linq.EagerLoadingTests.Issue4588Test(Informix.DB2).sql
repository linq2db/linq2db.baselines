BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 100
DECLARE @take Integer(4) -- Int32
SET     @take = 10

SELECT
	m_1.Id,
	m_1.Id_1,
	d_1.Id,
	d_1.SubOrderId,
	d_1.Code,
	d_1."Date",
	d_1.IsActive
FROM
	(
		SELECT DISTINCT
			d.Id,
			t2.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					t1.Id
				FROM
					(
						SELECT SKIP @skip FIRST @take
							x.Id
						FROM
							"Order" x
						WHERE
							x.Name LIKE 'cat%' ESCAPE '~'
						ORDER BY
							x.Id
					) t1
			) t2
				INNER JOIN SubOrder d ON t2.Id = d.OrderId
	) m_1
		INNER JOIN SubOrderDetail d_1 ON m_1.Id = d_1.SubOrderId

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 100
DECLARE @take Integer(4) -- Int32
SET     @take = 10

SELECT
	m_1.Id,
	d.Id,
	d.OrderId
FROM
	(
		SELECT DISTINCT
			t1.Id
		FROM
			(
				SELECT SKIP @skip FIRST @take
					x.Id
				FROM
					"Order" x
				WHERE
					x.Name LIKE 'cat%' ESCAPE '~'
				ORDER BY
					x.Id
			) t1
	) m_1
		INNER JOIN SubOrder d ON m_1.Id = d.OrderId

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 100
DECLARE @take Integer(4) -- Int32
SET     @take = 10

SELECT SKIP @skip FIRST @take
	x.Id,
	x.Name
FROM
	"Order" x
WHERE
	x.Name LIKE 'cat%' ESCAPE '~'
ORDER BY
	x.Id

