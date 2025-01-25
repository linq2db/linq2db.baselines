BeforeExecute
-- Informix.DB2 Informix

WITH cte (Id, Enum1)
AS
(
	SELECT
		p.Id,
		NULL::VarChar(50)
	FROM
		Issue3360NullInAnchor p
	UNION ALL
	SELECT
		t1.Id,
		'THIS_IS_ONE'::VarChar(50)
	FROM
		cte t1
			INNER JOIN Issue3360NullInAnchor r ON t1.Id = r.Id + 100
)
SELECT
	t2.Id,
	t2.Enum1
FROM
	cte t2

