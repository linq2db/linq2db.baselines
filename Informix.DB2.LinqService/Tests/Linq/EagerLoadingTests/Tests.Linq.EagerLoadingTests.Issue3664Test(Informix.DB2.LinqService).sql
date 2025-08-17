BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO Test3664
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 11

SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	Test3664 m_1
		INNER JOIN Test3664Item d ON m_1.Id = d.TestId
WHERE
	d.Id = @id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id
FROM
	Test3664 t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 12

SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	Test3664 m_1
		INNER JOIN Test3664Item d ON m_1.Id = d.TestId
WHERE
	d.Id = @id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id
FROM
	Test3664 t1

