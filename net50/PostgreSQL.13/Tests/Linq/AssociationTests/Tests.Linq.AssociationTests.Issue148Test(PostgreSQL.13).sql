﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	key_data_result."ParentID",
	key_data_result."Value1",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			n."ParentID",
			n."Value1"
		FROM
			"Parent" n
	) key_data_result
		INNER JOIN "Child" detail ON key_data_result."ParentID" = detail."ParentID"

BeforeExecute
RollbackTransaction
BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	n."ParentID",
	n."Value1"
FROM
	"Parent" n

