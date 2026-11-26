-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = 3
DECLARE @low Integer -- Int32
SET     @low = 0

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	CAST(@value AS Int) BETWEEN @low AND "p"."ParentID"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = 3
DECLARE @low Integer -- Int32
SET     @low = 0

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	CAST(@value AS Int) NOT BETWEEN @low AND "p"."ParentID"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

