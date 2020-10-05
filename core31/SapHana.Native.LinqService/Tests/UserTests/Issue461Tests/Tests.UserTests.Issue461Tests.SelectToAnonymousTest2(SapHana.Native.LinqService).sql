BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"l"."ParentID"
FROM
	"Child" "l"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	1
FROM
	"Parent" "sep"

