BeforeExecute
-- Informix.DB2 Informix

SELECT
	pp.ParentID,
	(
		SELECT
			COUNT(*)
		FROM
			Child a_Children
		WHERE
			pp.ParentID = a_Children.ParentID
	)
FROM
	Parent pp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	pp.ParentID,
	(
		SELECT
			COUNT(*)
		FROM
			Child a_Children
		WHERE
			pp.ParentID = a_Children.ParentID
	)
FROM
	Parent pp

