﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

BeforeExecute
RollbackTransaction
BeforeExecute
-- Firebird4 Firebird

SELECT
	1
FROM
	"Parent" "p"

