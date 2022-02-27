BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "AttributeBase"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "AttributeBase"
(
	"Id"
)
VALUES
(
	:"Id"
)

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "AttributeBase"

