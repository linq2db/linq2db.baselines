BeforeExecute
-- Informix.DB2 Informix

SELECT /* qb */
	t.PersonID,
	t.Diagnosis
FROM
	(
		SELECT
			c_1.ParentID
		FROM
			Parent t1,
			Child c_1
	) sub
		INNER JOIN Patient t ON sub.ParentID = t.PersonID

