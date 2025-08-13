﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	"Issue4963Table" "t1"
SET
	"Field" = CAST(CAST("t1"."Field" AS Int) + CAST(@offset AS Int) AS SmallInt)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Field"
FROM
	"Issue4963Table" "t1"
FETCH NEXT 2 ROWS ONLY

