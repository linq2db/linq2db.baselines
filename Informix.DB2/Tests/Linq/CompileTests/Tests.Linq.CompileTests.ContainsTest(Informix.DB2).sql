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
			@p::Int = c_1.ParentID
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
			@p::Int = c_1.ParentID
	)
FROM table(set{1})

