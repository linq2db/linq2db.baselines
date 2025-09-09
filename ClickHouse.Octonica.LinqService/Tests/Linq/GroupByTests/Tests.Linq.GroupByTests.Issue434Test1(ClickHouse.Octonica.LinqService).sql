BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	m_1.PersonID,
	d.PersonID,
	d.Diagnosis
FROM
	Person m_1
		INNER JOIN Patient d ON m_1.PersonID = d.PersonID
WHERE
	position(lowerUTF8(m_1.FirstName), 'test') > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.FirstName,
	p.PersonID
FROM
	Person p
WHERE
	position(lowerUTF8(p.FirstName), 'test') > 0

