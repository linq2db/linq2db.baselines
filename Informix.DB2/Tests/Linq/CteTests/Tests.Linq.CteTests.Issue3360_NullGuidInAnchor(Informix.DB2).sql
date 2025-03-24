﻿BeforeExecute
--  Informix.DB2 Informix

WITH cte (Id, Guid)
AS
(
	SELECT
		p.Id,
		NULL::VARCHAR(36)
	FROM
		Issue3360NullInAnchor p
	UNION ALL
	SELECT
		t1.Id,
		r.Guid
	FROM
		cte t1
			INNER JOIN Issue3360NullInAnchor r ON t1.Id = r.Id + 100
)
SELECT
	t2.Id,
	t2.Guid
FROM
	cte t2

