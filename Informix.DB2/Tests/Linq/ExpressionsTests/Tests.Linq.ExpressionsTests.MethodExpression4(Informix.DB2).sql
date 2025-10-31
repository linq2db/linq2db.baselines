-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Child c_1
		WHERE
			p.ParentID = c_1.ParentID AND c_1.ChildID > @n
	) + 4
FROM
	Parent p

