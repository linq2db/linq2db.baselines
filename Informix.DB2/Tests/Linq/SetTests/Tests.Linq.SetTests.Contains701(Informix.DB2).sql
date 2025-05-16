BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 11
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 11

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child param
				LEFT JOIN Parent a_Parent ON param.ParentID = a_Parent.ParentID
		WHERE
			a_Parent.ParentID = @ParentID AND a_Parent.Value1 = @Value1
	)
FROM table(set{1})

