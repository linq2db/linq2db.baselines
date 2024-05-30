BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"CollatedTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseSensitive") LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseInsensitive") LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseSensitive") LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseInsensitive") LIKE '%ststring' ESCAPE '~'

