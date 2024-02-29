﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	key_data_result."ParentID",
	gjd_c."ParentID",
	gjd_c."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 1
	) key_data_result
		INNER JOIN "Child" gjd_c ON gjd_c."ParentID" = key_data_result."ParentID" + :n

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1

