-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."GroupId",
	"t1"."Name"
FROM
	"BatchItem" "t1"
ORDER BY
	"t1"."Id"
LIMIT :"take"

-- SapHana.Native SapHana
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" "t1"
	)
FROM DUMMY

