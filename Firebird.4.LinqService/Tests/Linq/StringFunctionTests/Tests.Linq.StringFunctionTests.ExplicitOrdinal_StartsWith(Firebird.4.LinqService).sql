﻿BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"CollatedTable" "t1"

BeforeExecute
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) STARTING WITH 'TestSt'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) STARTING WITH 'TestSt'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) STARTING WITH 'testst'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) STARTING WITH 'testst'

