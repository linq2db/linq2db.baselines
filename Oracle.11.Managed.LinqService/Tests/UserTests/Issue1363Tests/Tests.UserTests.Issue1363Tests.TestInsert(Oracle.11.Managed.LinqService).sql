BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Raw(16) -- Binary
SET     @id = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	:id,
	(
		SELECT
			t1."required_field"
		FROM
			"Issue1363" t1
		WHERE
			1 = 0
	)
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Raw(16) -- Binary
SET     @id = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @testId Raw(16) -- Binary
SET     @testId = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	:id,
	(
		SELECT
			t1."required_field"
		FROM
			"Issue1363" t1
		WHERE
			t1."required_field" = :testId
	)
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id2 Raw(16) -- Binary
SET     @id2 = HEXTORAW('0D6048A921DE744F8AC29516B287076E')

SELECT
	t1."required_field",
	t1."optional_field"
FROM
	"Issue1363" t1
WHERE
	t1."required_field" = :id2 AND ROWNUM <= 2

