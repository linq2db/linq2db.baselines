BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DistinctOrderByTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DistinctOrderByTable"
(
	"Id" Integer       NOT NULL,
	"F1" Integer       NOT NULL,
	"F2" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 8
DECLARE @F1  -- Int32
SET     @F1 = 8
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '8'

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @F1  -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '3'

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @F1  -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '2'

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @F1  -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '3'

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @F1  -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '3'

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @F1  -- Int32
SET     @F1 = 5
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '5'

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @F1  -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '2'

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @F1  -- Int32
SET     @F1 = 4
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '4'

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	"F1",
	"F2"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @skip  -- Int32
SET     @skip = 2

SELECT
	"_1"."F2"
FROM
	(
		SELECT DISTINCT
			"_"."F1",
			"_"."F2"
		FROM
			"DistinctOrderByTable" "_"
	) "_1"
ORDER BY
	"_1"."F1" DESC
LIMIT 4200000000 OFFSET ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DistinctOrderByTable"

