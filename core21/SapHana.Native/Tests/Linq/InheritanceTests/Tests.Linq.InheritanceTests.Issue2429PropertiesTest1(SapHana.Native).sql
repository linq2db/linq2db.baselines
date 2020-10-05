BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "BaseTable"
(
	"Value" Integer NOT NULL,
	"Id"    Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @BaseValue  -- Int32
SET     @BaseValue = 100
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "BaseTable"
(
	"Value",
	"Id"
)
VALUES
(
	:"BaseValue",
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"x"."Value",
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"x"."Value",
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1 AND "x"."Value" = 100
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "BaseTable"

