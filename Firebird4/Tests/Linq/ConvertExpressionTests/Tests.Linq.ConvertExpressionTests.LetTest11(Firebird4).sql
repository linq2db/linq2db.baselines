﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" > 0
ORDER BY
	"c_1"."ParentID"

BeforeExecute
-- Firebird4 Firebird

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > -100
ORDER BY
	"c_1"."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird4 Firebird

SELECT
	1
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

