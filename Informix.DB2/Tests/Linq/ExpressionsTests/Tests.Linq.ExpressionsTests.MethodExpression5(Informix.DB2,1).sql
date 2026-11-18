-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Child c_1
		WHERE
			c_1.ParentID = p.ParentID
	) + @n::Int
FROM
	Parent p

