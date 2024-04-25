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
	CAST(@Id AS Int),
	CAST(@CaseSensitive AS VARCHAR(10)),
	CAST(@CaseInsensitive AS VARCHAR(10))
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) LIKE '%stst%' ESCAPE '~'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) LIKE '%stst%' ESCAPE '~'

