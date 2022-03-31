BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"CollatedTable" "t1"

BeforeExecute
-- Firebird4 Firebird
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
	@Id,
	@CaseSensitive,
	@CaseInsensitive
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseSensitive") STARTING WITH 'testst'

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseInsensitive") STARTING WITH 'testst'

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseSensitive") STARTING WITH 'testst'

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseInsensitive") STARTING WITH 'testst'

