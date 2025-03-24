﻿BeforeExecute
--  Informix.DB2 Informix

WITH cte (Id, Str)
AS
(
	SELECT
		p.Id,
		p.Str
	FROM
		Issue3360Table p
	UNION ALL
	SELECT
		t1.Id,
		'Str'::VarChar
	FROM
		cte t1,
		Issue3360Table r
	WHERE
		t1.Id = r.Id + 1
)
SELECT
	t2.Id,
	t2.Str
FROM
	cte t2

