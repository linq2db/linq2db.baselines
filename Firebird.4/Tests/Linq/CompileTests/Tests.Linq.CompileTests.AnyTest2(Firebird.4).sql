﻿BeforeExecute
--  Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = @p
	)
FROM rdb$database

BeforeExecute
--  Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = @p
	)
FROM rdb$database

