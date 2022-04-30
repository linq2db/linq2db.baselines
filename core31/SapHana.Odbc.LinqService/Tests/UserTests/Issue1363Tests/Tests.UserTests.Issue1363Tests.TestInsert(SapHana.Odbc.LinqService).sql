BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1363"
(
	"required_field" Char (36) NOT NULL,
	"optional_field" Char (36)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Char(36) -- AnsiStringFixedLength
SET     @id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	?,
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
-- SapHana.Odbc SapHanaOdbc
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
	?,
	(
		SELECT
			"_"."required_field"
		FROM
			"Issue1363" "_"
		WHERE
			"_"."required_field" = ?
	)
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
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
	"_"."required_field" = ?
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1363"

