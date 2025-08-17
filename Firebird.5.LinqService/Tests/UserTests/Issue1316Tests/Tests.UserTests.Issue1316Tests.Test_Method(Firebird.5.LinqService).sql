BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	"t1".ID
FROM
	"Issue1316Tests" "t1"
WHERE
	"t1".ID = @p
FETCH NEXT 2 ROWS ONLY

