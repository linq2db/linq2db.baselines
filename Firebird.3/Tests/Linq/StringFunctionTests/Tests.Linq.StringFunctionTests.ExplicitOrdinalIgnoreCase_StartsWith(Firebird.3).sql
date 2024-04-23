BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"CollatedTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @CaseSensitive VarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive VarChar(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO "CollatedTable"
(
	"Id",
	"CaseSensitive",
	"CaseInsensitive"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@CaseSensitive AS VARCHAR(10)),
	CAST(@CaseInsensitive AS VARCHAR(10))
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseSensitive") STARTING WITH 'testst'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseInsensitive") STARTING WITH 'testst'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseSensitive") STARTING WITH 'testst'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseInsensitive") STARTING WITH 'testst'

