﻿BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
	)

BeforeExecute
RollbackTransaction
