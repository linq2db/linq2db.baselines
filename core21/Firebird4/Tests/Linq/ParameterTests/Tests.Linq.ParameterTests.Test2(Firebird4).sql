﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 1
DECLARE @id3 Integer -- Int32
SET     @id3 = 10000

SELECT FIRST @take
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	(("p"."ParentID" = @id1 OR "p"."ParentID" >= @id2) OR "p"."ParentID" >= @id3)
ORDER BY
	"p"."ParentID"

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @id1 Integer -- Int32
SET     @id1 = 2
DECLARE @id2 Integer -- Int32
SET     @id2 = 2
DECLARE @id3 Integer -- Int32
SET     @id3 = 10000

SELECT FIRST @take
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	(("p"."ParentID" = @id1 OR "p"."ParentID" >= @id2) OR "p"."ParentID" >= @id3)
ORDER BY
	"p"."ParentID"

