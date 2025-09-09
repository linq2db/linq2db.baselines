BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2)),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2)),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

