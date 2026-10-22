-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take
	"m_1"."ParentID",
	"m_1"."Value1"
FROM
	"Parent" "m_1"
ORDER BY
	"m_1"."ParentID"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

