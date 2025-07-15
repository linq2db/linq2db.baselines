BeforeExecute
-- Firebird.4 Firebird4
DECLARE @group Integer -- Int32
SET     @group = 7

SELECT
	"p"."Id",
	NTH_VALUE("p"."Id", 2) FROM FIRST OVER(ORDER BY "p"."Order" DESC)
FROM
	"Position" "p"
WHERE
	"p"."Group" = @group

