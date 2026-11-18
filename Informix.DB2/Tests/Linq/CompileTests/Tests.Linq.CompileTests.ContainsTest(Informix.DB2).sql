-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			@ParentID::Int = c_1.ParentID
	)
FROM table(set{1})

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			@ParentID::Int = c_1.ParentID
	)
FROM table(set{1})

