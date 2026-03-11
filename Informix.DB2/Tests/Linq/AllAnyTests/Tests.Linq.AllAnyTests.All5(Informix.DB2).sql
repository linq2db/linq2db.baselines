-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 3

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID <= @n
	)
FROM table(set{1})

