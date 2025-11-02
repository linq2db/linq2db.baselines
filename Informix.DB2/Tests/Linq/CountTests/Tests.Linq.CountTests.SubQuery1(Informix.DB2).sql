-- Informix.DB2 Informix

SELECT
	p.ParentID,
	(
		SELECT
			COUNT(*)
		FROM
			Child a_Children
		WHERE
			p.ParentID = a_Children.ParentID AND a_Children.ChildID::Decimal <> 0
	)
FROM
	Parent p
WHERE
	p.ParentID <> 5

