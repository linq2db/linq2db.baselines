﻿BeforeExecute
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
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 1

SELECT
	"r"."O"
FROM
	"TEST_TABLE_FUNCTION"(?) "r"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 1

SELECT
	"r"."O"
FROM
	"TEST_PACKAGE1":"TEST_TABLE_FUNCTION"(?) "r"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Parameter1  -- Int32
SET     @Parameter1 = 1

SELECT
	"r"."O"
FROM
	"TEST_PACKAGE2":"TEST_TABLE_FUNCTION"(?) "r"
LIMIT 1

