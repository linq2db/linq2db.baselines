BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Position"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Position"
(
	"Group" Integer NOT NULL,
	"Order" Integer NOT NULL,
	"Id"    Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Group_1  -- Int32
SET     @Group_1 = 7
DECLARE @Order_1  -- Int32
SET     @Order_1 = 10
DECLARE @Id  -- Int32
SET     @Id = 5

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Group_1  -- Int32
SET     @Group_1 = 7
DECLARE @Order_1  -- Int32
SET     @Order_1 = 20
DECLARE @Id  -- Int32
SET     @Id = 6

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Group_1  -- Int32
SET     @Group_1 = 7
DECLARE @Order_1  -- Int32
SET     @Order_1 = 30
DECLARE @Id  -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Group_1  -- Int32
SET     @Group_1 = 7
DECLARE @Order_1  -- Int32
SET     @Order_1 = 40
DECLARE @Id  -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @group_1  -- Int32
SET     @group_1 = 7

SELECT
	"p"."Id",
	LAG("p"."Id", 1, -1) OVER(ORDER BY "p"."Order")
FROM
	"Position" "p"
WHERE
	"p"."Group" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Position"

