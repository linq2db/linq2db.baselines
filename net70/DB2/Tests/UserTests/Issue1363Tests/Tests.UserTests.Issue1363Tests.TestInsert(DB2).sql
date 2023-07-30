BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1363"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1363"
		(
			"required_field" char(16) for bit data NOT NULL,
			"optional_field" char(16) for bit data
		)
	';
END

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
			"_"."required_field"
		FROM
			"Issue1363" "_"
		WHERE
			"_"."required_field" IS NULL
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
			"_"."required_field"
		FROM
			"Issue1363" "_"
		WHERE
			"_"."required_field" = @testId
	)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id2 VarBinary(16) -- Binary
SET     @id2 = BX'0D6048A921DE744F8AC29516B287076E'

SELECT
	"_"."required_field",
	"_"."optional_field"
FROM
	"Issue1363" "_"
WHERE
	"_"."required_field" = @id2
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1363"';
END

