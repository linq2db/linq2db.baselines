﻿BeforeExecute
--  Firebird.5 Firebird4 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	COUNT(*)
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" = @p

