﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."ParentID",
	"d"."ChildID",
	"d"."ParentID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

