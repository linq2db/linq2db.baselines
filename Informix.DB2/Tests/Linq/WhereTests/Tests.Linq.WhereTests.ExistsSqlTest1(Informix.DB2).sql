BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			Parent.ParentID + 100 = c_1.ParentID
	)

