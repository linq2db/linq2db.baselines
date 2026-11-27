-- Informix.DB2 Informix
SELECT
	m_1.ID,
	m_1.ValS,
	d.ID,
	d.ValB,
	d.ValInt
FROM
	ODataLevel1Entity m_1
		INNER JOIN ODataLevel2Entity d ON m_1.ID = d.ParentId
WHERE
	EXISTS(
		SELECT
			*
		FROM
			ODataLevel2Entity c_1
		WHERE
			m_1.ID = c_1.ParentId AND m_1.ValS LIKE '%de%' ESCAPE '~' AND
			m_1.ValS IS NOT NULL
	)

-- Informix.DB2 Informix
SELECT
	it.ID,
	it.ValB,
	it.ValS,
	it.ValInt
FROM
	ODataLevel1Entity it
WHERE
	EXISTS(
		SELECT
			*
		FROM
			ODataLevel2Entity c_1
		WHERE
			it.ID = c_1.ParentId AND it.ValS LIKE '%de%' ESCAPE '~' AND
			it.ValS IS NOT NULL
	)

