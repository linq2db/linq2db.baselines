BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Parent a_Children
		WHERE
			p.ParentID = a_Children.Value1
	)
FROM
	Parent p

