-- Firebird.5 Firebird4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2)),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.5 Firebird4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce("p"."Value1", Mod("p"."ParentID", 2)),
	CAST(@Value1 AS Int)
FROM
	"Parent" "p"

-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

