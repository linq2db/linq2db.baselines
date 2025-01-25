BeforeExecute
-- Informix.DB2 Informix

SELECT
	Nvl((
		SELECT
			MAX(a_Children.ChildID)
		FROM
			Child a_Children
		WHERE
			p.ParentID = a_Children.ParentID
	), p.Value1)
FROM
	Parent p

