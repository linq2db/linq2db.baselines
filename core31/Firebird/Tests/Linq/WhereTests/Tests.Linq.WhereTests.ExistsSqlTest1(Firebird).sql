﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = "p"."ParentID"
	)

BeforeExecute
RollbackTransaction
