-- SapHana.Native SapHana
DECLARE @i Integer -- Int32
SET     @i = 1

TEST_PROCEDURE

-- SapHana.Native SapHana
SELECT
	TEST_FUNCTION(1)
FROM
	"Person" "p"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"r"."O"
FROM
	"TEST_TABLE_FUNCTION"(:"p") "r"
LIMIT 1

