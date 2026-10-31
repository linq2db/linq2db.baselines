-- SapHana.Native SapHana
DELETE FROM
	"CollatedTable" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @CaseSensitive NVarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive NVarChar(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO "CollatedTable"
(
	"Id",
	"CaseSensitive",
	"CaseInsensitive"
)
VALUES
(
	:"Id",
	:"CaseSensitive",
	:"CaseInsensitive"
)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseSensitive" LIKE '%stString' ESCAPE '~'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseInsensitive" LIKE '%stString' ESCAPE '~'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseSensitive" LIKE '%ststring' ESCAPE '~'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseInsensitive" LIKE '%ststring' ESCAPE '~'

