﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = CAST(@ChildID AS Int)
WHERE
	1 = 0

