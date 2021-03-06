﻿BeforeExecute
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
	CAST("r"."CaseSensitive" AS BLOB) STARTING WITH 'TestSt'

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) STARTING WITH 'TestSt'

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseSensitive" AS BLOB) STARTING WITH 'testst'

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	CAST("r"."CaseInsensitive" AS BLOB) STARTING WITH 'testst'

