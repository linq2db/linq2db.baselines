﻿BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			CAST(@p AS Int) = "c_1"."ParentID"
	)
FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			CAST(@p AS Int) = "c_1"."ParentID"
	)
FROM rdb$database

