BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @i  -- Int32
SET     @i = 1

{ CALL TEST_PROCEDURE (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @i  -- Int32
SET     @i = 1

{ CALL TEST_PACKAGE1:TEST_PROCEDURE (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @i  -- Int32
SET     @i = 1

{ CALL TEST_PACKAGE2:TEST_PROCEDURE (?) }

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	TEST_FUNCTION(1)
FROM
	"Person" "p"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	TEST_PACKAGE1:TEST_FUNCTION(1)
FROM
	"Person" "p"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	TEST_PACKAGE2:TEST_FUNCTION(1)
FROM
	"Person" "p"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"r"."O"
FROM
	"TEST_TABLE_FUNCTION"(1) "r"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"r"."O"
FROM
	"TEST_PACKAGE1":"TEST_TABLE_FUNCTION"(1) "r"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"r"."O"
FROM
	"TEST_PACKAGE2":"TEST_TABLE_FUNCTION"(1) "r"
LIMIT ?

