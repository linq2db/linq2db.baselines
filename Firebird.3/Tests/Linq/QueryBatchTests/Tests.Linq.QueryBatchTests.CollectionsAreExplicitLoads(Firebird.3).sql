-- Firebird.3 Firebird3
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
FETCH NEXT @take ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" "t1"
	)
FROM rdb$database

