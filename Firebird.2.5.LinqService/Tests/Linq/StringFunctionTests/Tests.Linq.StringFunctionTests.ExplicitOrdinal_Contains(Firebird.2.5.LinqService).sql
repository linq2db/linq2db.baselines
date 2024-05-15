BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"CollatedTable" "t1"

BeforeExecute
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

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) LIKE '%stst%' ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) LIKE '%stst%' ESCAPE '~'

