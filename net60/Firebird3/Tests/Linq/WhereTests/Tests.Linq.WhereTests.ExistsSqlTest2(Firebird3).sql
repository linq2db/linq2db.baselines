﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	)

BeforeExecute
RollbackTransaction
