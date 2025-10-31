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
	CAST("r"."CaseSensitive" AS BLOB) STARTING WITH 'TestSt'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) STARTING WITH 'TestSt'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) STARTING WITH 'testst'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) STARTING WITH 'testst'

