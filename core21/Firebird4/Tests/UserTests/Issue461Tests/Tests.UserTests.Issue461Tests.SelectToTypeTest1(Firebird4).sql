﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"l"."ParentID"
FROM
	"Child" "l"

BeforeExecute
RollbackTransaction
BeforeExecute
-- Firebird4 Firebird

SELECT
	1
FROM
	"Parent" "sep"

