﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"CollatedTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
	CAST(@CaseSensitive AS NVarChar(10)),
	CAST(@CaseInsensitive AS NVarChar(10))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseSensitive" LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseInsensitive" LIKE 'TestSt%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseSensitive" LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseInsensitive" LIKE 'testst%' ESCAPE '~'

