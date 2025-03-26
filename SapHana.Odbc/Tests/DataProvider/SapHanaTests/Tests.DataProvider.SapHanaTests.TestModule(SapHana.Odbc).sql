BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @i Int -- Int32
SET     @i = 1

{ CALL TEST_PROCEDURE (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @i Int -- Int32
SET     @i = 1

{ CALL TEST_PACKAGE1:TEST_PROCEDURE (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @i Int -- Int32
SET     @i = 1

{ CALL TEST_PACKAGE2:TEST_PROCEDURE (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	TEST_FUNCTION(1)
FROM
	"Person" "p"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	TEST_PACKAGE1:TEST_FUNCTION(1)
FROM
	"Person" "p"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	TEST_PACKAGE2:TEST_FUNCTION(1)
FROM
	"Person" "p"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"r"."O"
FROM
	"TEST_TABLE_FUNCTION"(?) "r"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"r"."O"
FROM
	"TEST_PACKAGE1":"TEST_TABLE_FUNCTION"(?) "r"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"r"."O"
FROM
	"TEST_PACKAGE2":"TEST_TABLE_FUNCTION"(?) "r"
LIMIT 1

