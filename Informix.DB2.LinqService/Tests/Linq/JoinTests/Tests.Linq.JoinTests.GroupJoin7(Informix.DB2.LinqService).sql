﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID - @n::Int

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1

