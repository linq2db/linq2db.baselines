BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Order"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Order"
(
	Id   Int           NOT NULL,
	Name NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SubOrder

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SubOrder
(
	Id      Int NOT NULL,
	OrderId Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SubOrderDetail

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SubOrderDetail
(
	Id         Int                       NOT NULL,
	SubOrderId Int                       NOT NULL,
	Code       NVarChar(255)                 NULL,
	"Date"     datetime year to fraction NOT NULL,
	IsActive   BOOLEAN                   NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

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
						SELECT SKIP 100 FIRST 10
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
				SELECT SKIP 100 FIRST 10
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

SELECT SKIP 100 FIRST 10
	x.Id,
	x.Name
FROM
	"Order" x
WHERE
	x.Name LIKE 'cat%' ESCAPE '~'
ORDER BY
	x.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SubOrderDetail

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SubOrder

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Order"

