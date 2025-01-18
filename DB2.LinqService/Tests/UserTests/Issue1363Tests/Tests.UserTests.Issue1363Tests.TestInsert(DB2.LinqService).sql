BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id VarBinary(16) -- Binary
SET     @id = BX'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	@id,
	(
		SELECT
			"t1"."required_field"
		FROM
			"Issue1363" "t1"
		WHERE
			1 = 0
	)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id VarBinary(16) -- Binary
SET     @id = BX'0D6048A921DE744F8AC29516B287076E'
DECLARE @testId VarBinary(16) -- Binary
SET     @testId = BX'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	@id,
	(
		SELECT
			"t1"."required_field"
		FROM
			"Issue1363" "t1"
		WHERE
			"t1"."required_field" = @testId
	)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id2 VarBinary(16) -- Binary
SET     @id2 = BX'0D6048A921DE744F8AC29516B287076E'

SELECT
	"t1"."required_field",
	"t1"."optional_field"
FROM
	"Issue1363" "t1"
WHERE
	"t1"."required_field" = @id2
FETCH NEXT 2 ROWS ONLY

