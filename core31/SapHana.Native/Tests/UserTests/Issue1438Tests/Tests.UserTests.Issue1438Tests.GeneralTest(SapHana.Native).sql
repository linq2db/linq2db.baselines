﻿BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1438"
(
	"Id"  Integer GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	"Has" TinyInt                                  NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Has  -- Byte
SET     @Has = 1

INSERT INTO "Issue1438"
(
	"Has"
)
VALUES
(
	:"Has"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT MAX("Id") FROM "Issue1438"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id_1  -- Int32
SET     @id_1 = 1
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"_"."Id",
	"_"."Has"
FROM
	"Issue1438" "_"
WHERE
	"_"."Id" = :"id_1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1438"

