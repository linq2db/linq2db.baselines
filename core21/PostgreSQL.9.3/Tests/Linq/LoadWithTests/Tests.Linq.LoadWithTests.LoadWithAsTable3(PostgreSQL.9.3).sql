﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	"lw_Parent"."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) "lw_Parent"
		INNER JOIN "Child" detail ON "lw_Parent"."ParentID" = detail."ParentID"

BeforeExecute
RollbackTransaction
BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" t1
		WHERE
			p."ParentID" = t1."ParentID"
	),
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

