BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Fact"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 3

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 4

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 5

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Tag"
(
	"Id"     Integer       NOT NULL,
	"FactId" Integer       NOT NULL,
	"Name"   NVarChar(255) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @FactId  -- Int32
SET     @FactId = 3
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	:"Id",
	:"FactId",
	:"Name"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @FactId  -- Int32
SET     @FactId = 3
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	:"Id",
	:"FactId",
	:"Name"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @FactId  -- Int32
SET     @FactId = 4
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Tag4'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	:"Id",
	:"FactId",
	:"Name"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"f"."Id",
	"ft"."Id",
	"ft"."FactId",
	"ft"."Name"
FROM
	"Tag" "ft"
		RIGHT JOIN "Fact" "f" ON "ft"."FactId" = "f"."Id"
WHERE
	"f"."Id" > 3

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Tag"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Fact"

