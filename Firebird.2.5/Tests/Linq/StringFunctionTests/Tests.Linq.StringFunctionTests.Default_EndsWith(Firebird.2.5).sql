-- Firebird.2.5 Firebird

DELETE FROM
	"CollatedTable" "t1"

-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseSensitive" LIKE '%stString' ESCAPE '~'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseInsensitive" LIKE '%stString' ESCAPE '~'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseSensitive" LIKE '%ststring' ESCAPE '~'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseInsensitive" LIKE '%ststring' ESCAPE '~'

