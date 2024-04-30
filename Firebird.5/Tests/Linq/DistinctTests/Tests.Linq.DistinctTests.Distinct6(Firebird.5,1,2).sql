﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce("p"."Value1", "p"."ParentID"),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

