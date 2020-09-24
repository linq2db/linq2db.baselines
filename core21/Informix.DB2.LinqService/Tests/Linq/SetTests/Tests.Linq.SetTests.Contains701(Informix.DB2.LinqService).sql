BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
				LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
		WHERE
			(a_Parent.ParentID = 11 AND a_Parent.Value1 = 11)
	)
FROM SYSTABLES

