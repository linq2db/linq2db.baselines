BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "UpdateSetTest"
(
	"Id"     Integer   NOT NULL,
	"Value1" Char (36) NOT NULL,
	"Value2" Integer   NOT NULL,
	"Value3" Integer   NOT NULL,
	"Value4" Char (36)     NULL,
	"Value5" Integer       NULL,
	"Value6" Integer       NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value1 Char(36) -- AnsiStringFixedLength
SET     @Value1 = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @Value2  -- Int32
SET     @Value2 = 10
DECLARE @Value3  -- Int32
SET     @Value3 = 6
DECLARE @Value4 Char(36) -- AnsiStringFixedLength
SET     @Value4 = NULL
DECLARE @Value5  -- Int32
SET     @Value5 = NULL
DECLARE @Value6  -- Int32
SET     @Value6 = NULL

INSERT INTO "UpdateSetTest"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4",
	"Value5",
	"Value6"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Value3",
	:"Value4",
	:"Value5",
	:"Value6"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value6  -- Int32
SET     @Value6 = 7
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"UpdateSetTest"."Value6" = :"Value6"
WHERE
	"UpdateSetTest"."Id" = :"id"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"_"."Value6"
FROM
	"UpdateSetTest" "_"
WHERE
	"_"."Id" = :"id"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value6  -- Int32
SET     @Value6 = 8
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest"
SET
	"UpdateSetTest"."Value6" = :"Value6"
WHERE
	"UpdateSetTest"."Id" = :"id"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"_"."Value6"
FROM
	"UpdateSetTest" "_"
WHERE
	"_"."Id" = :"id"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "UpdateSetTest"

