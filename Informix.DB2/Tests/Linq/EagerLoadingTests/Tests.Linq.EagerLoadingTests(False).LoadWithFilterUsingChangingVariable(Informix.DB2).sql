-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO LoadWithFilterRecord
(
	Id
)
VALUES
(
	@Id
)

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 11

SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	LoadWithFilterRecord m_1
		INNER JOIN LoadWithFilterRecordItem d ON m_1.Id = d.TestId
WHERE
	d.Id = @id

-- Informix.DB2 Informix
SELECT
	t1.Id
FROM
	LoadWithFilterRecord t1

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 12

SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	LoadWithFilterRecord m_1
		INNER JOIN LoadWithFilterRecordItem d ON m_1.Id = d.TestId
WHERE
	d.Id = @id

-- Informix.DB2 Informix
SELECT
	t1.Id
FROM
	LoadWithFilterRecord t1

