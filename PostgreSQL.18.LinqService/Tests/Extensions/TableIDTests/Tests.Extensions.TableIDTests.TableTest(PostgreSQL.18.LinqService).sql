﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	'*** p ***' || '4',
	'*** p ***',
	'*** "Parent" ***',
	'*** p_1.p ***'
FROM
	"Child" c_1
		INNER JOIN (
			SELECT
				p."ParentID"
			FROM
				"Parent" p
		) p_1 ON c_1."ParentID" = p_1."ParentID"
WHERE
	'*** p ***' = '*** "Parent" ***'

