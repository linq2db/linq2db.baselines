-- Informix.DB2 Informix

SELECT
	t.ParentID,
	(
		SELECT
			COUNT(*)
		FROM
			Child a_Children
		WHERE
			t.ParentID = a_Children.ParentID
	)
FROM
	Parent t

-- Informix.DB2 Informix

SELECT
	t.ParentID,
	(
		SELECT
			COUNT(*)
		FROM
			Child a_Children
		WHERE
			t.ParentID = a_Children.ParentID
	)
FROM
	Parent t

