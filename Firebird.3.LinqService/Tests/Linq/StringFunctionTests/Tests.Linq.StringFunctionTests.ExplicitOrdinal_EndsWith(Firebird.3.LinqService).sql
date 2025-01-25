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
	@Id,
	@CaseSensitive,
	@CaseInsensitive
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) LIKE '%stString' ESCAPE '~'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) LIKE '%stString' ESCAPE '~'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) LIKE '%ststring' ESCAPE '~'

