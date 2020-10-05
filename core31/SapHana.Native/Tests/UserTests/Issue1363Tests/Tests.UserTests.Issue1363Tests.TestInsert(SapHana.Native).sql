BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1363"
(
	"required_field" Char (36) NOT NULL,
	"optional_field" Char (36)     NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id Char(36) -- AnsiStringFixedLength
SET     @id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	:"id",
	(
		SELECT
			"_"."required_field"
		FROM
			"Issue1363" "_"
		WHERE
			"_"."required_field" IS NULL
	)
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id Char(36) -- AnsiStringFixedLength
SET     @id = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @testId Char(36) -- AnsiStringFixedLength
SET     @testId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	:"id",
	(
		SELECT
			"_"."required_field"
		FROM
			"Issue1363" "_"
		WHERE
			"_"."required_field" = :"testId"
	)
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @id2 Char(36) -- AnsiStringFixedLength
SET     @id2 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"_"."required_field",
	"_"."optional_field"
FROM
	"Issue1363" "_"
WHERE
	"_"."required_field" = :"id2"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1363"

