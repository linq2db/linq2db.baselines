﻿BeforeExecute
--  Firebird.5 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" "t1"
		WHERE
			CAST(@ID AS Int) = "t1"."PersonID"
	)
FROM rdb$database

