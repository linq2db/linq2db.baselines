BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "StLink"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "StLink"
(
	"InId"          Integer NOT NULL,
	"InMaxQuantity" Double      NULL,
	"InMinQuantity" Double      NULL,

	PRIMARY KEY ("InId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InId  -- Int32
SET     @InId = 1
DECLARE @InMaxQuantity  -- Double
SET     @InMaxQuantity = 2
DECLARE @InMinQuantity  -- Double
SET     @InMinQuantity = 1

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InId  -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity  -- Double
SET     @InMaxQuantity = NULL
DECLARE @InMinQuantity  -- Double
SET     @InMinQuantity = NULL

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EdtLink"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "EdtLink"
(
	"InId"          Integer NOT NULL,
	"InMaxQuantity" Double      NULL,
	"InMinQuantity" Double      NULL,

	PRIMARY KEY ("InId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InId  -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity  -- Double
SET     @InMaxQuantity = 4
DECLARE @InMinQuantity  -- Double
SET     @InMinQuantity = 3

INSERT INTO "EdtLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."InId",
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMinQuantity"
		ELSE "e"."InMinQuantity"
	END,
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMaxQuantity"
		ELSE "e"."InMaxQuantity"
	END
FROM
	"StLink" "t1"
		LEFT JOIN "EdtLink" "e" ON "t1"."InId" = "e"."InId"
WHERE
	"t1"."InId" = 1
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."InId",
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMinQuantity"
		ELSE "e"."InMinQuantity"
	END,
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMaxQuantity"
		ELSE "e"."InMaxQuantity"
	END
FROM
	"StLink" "t1"
		LEFT JOIN "EdtLink" "e" ON "t1"."InId" = "e"."InId"
WHERE
	"t1"."InId" = 2
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EdtLink"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "StLink"

