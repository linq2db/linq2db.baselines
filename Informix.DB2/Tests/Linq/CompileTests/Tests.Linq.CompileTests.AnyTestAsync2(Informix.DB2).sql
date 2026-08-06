-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = @p
	)
FROM table(set{1})

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = @p
	)
FROM table(set{1})

