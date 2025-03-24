﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 0
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID" + CAST(@ParentID AS Int)),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

BeforeExecute
--  Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

