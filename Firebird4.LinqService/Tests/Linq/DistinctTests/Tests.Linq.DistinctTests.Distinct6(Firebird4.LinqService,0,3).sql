﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID" + CAST(@ParentID AS Int)),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

