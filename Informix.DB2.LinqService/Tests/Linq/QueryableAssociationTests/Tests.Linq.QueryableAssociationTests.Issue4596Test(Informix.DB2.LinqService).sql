BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4596Form

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4596Form
(
	Id Int      NOT NULL,
	C1 NChar(1) NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4596Item

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4596Item
(
	Id         Int           NOT NULL,
	FormId     Int           NOT NULL,
	OrderIndex Int           NOT NULL,
	Name1      NVarChar(255)     NULL,
	Name2      NVarChar(255)     NULL,
	Name3      NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	m_1.cond,
	m_1.cond_1,
	d.Id,
	d.FormId,
	d.OrderIndex,
	d.Name1,
	d.Name2,
	d.Name3
FROM
	(
		SELECT FIRST 1
			t1.Id,
			CASE
				WHEN t1.C1 = 'T' THEN 't'::BOOLEAN
				ELSE 'f'::BOOLEAN
			END::BOOLEAN as cond,
			CASE
				WHEN t1.C1 <> 'T' THEN 't'::BOOLEAN
				ELSE 'f'::BOOLEAN
			END::BOOLEAN as cond_1
		FROM
			Issue4596Form t1
	) m_1,
	Issue4596Item d
WHERE
	d.FormId = m_1.Id
ORDER BY
	CASE
		WHEN m_1.cond THEN d.OrderIndex
		ELSE 0
	END,
	CASE
		WHEN m_1.cond_1 THEN d.Name1
		ELSE ''
	END,
	CASE
		WHEN m_1.cond_1 THEN d.Name2
		ELSE ''
	END,
	CASE
		WHEN m_1.cond_1 THEN d.Name3
		ELSE ''
	END

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t1.Id,
	t1.C1,
	CASE
		WHEN t1.C1 = 'T' THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN t1.C1 <> 'T' THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	Issue4596Form t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4596Item

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4596Form

