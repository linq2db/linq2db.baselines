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
	CAST(@Id AS Int),
	CAST(@CaseSensitive AS VARCHAR(10)),
	CAST(@CaseInsensitive AS VARCHAR(10))
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) LIKE '%stst%' ESCAPE '~'

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) LIKE '%stst%' ESCAPE '~'

