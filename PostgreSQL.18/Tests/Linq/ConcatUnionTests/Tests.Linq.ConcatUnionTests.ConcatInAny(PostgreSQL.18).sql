﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	EXISTS(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		UNION ALL
		SELECT
			p_1."ParentID"
		FROM
			"Parent" p_1
	)

