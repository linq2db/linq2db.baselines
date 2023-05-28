BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "testparams"
(
	"col2"    Integer NOT NULL,
	"col3"    Integer NOT NULL,
	"Column1" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @test  -- Int32
SET     @test = 0
DECLARE @TEST_1  -- Int32
SET     @TEST_1 = 0
DECLARE @Component_Column1  -- Int32
SET     @Component_Column1 = 1

INSERT INTO "testparams"
(
	"col2",
	"col3",
	"Column1"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @test  -- Int32
SET     @test = 2
DECLARE @TEST_1  -- Int32
SET     @TEST_1 = 3

UPDATE
	"testparams"
SET
	"testparams"."col2" = ?,
	"testparams"."col3" = ?
WHERE
	"testparams"."Column1" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t1"."col2",
	"t1"."col3",
	"t1"."Column1"
FROM
	"testparams" "t1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @TEST  -- Int32
SET     @TEST = 2
DECLARE @test_1  -- Int32
SET     @test_1 = 3

UPDATE
	"testparams"
SET
	"testparams"."col3" = ?,
	"testparams"."col2" = ?
WHERE
	"testparams"."Column1" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t1"."col2",
	"t1"."col3",
	"t1"."Column1"
FROM
	"testparams" "t1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "testparams"

