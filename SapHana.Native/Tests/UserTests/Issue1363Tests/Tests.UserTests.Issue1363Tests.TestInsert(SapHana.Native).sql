-- SapHana.Native SapHana
DECLARE @id VarChar(36) -- AnsiStringFixedLength
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
			"t1"."required_field"
		FROM
			"Issue1363" "t1"
		WHERE
			1 = 0
	)
)

-- SapHana.Native SapHana
DECLARE @id VarChar(36) -- AnsiStringFixedLength
SET     @id = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @testId VarChar(36) -- AnsiStringFixedLength
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
			"t1"."required_field"
		FROM
			"Issue1363" "t1"
		WHERE
			"t1"."required_field" = :"testId"
	)
)

-- SapHana.Native SapHana
DECLARE @id2 VarChar(36) -- AnsiStringFixedLength
SET     @id2 = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	"t1"."required_field",
	"t1"."optional_field"
FROM
	"Issue1363" "t1"
WHERE
	"t1"."required_field" = :"id2"
LIMIT 2

