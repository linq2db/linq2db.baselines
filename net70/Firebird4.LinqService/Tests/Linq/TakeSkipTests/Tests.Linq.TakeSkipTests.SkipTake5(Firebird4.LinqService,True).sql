﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT FIRST @take SKIP @skip
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

