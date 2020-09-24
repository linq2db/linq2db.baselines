BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			keyParam.Taxonomy
		FROM
			Doctor keyParam
		WHERE
			t1.PersonID = keyParam.PersonID
	)
FROM
	Doctor t1
GROUP BY
	t1.PersonID

