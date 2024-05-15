﻿BeforeExecute
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
DECLARE @testId VarBinary(16) -- Binary
SET     @testId = BX'00000000000000000000000000000000'

INSERT INTO "Issue1363"
(
	"required_field",
	"optional_field"
)
VALUES
(
	CAST(@id AS char(16) for bit data),
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
	CAST(@id AS char(16) for bit data),
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1363"';
END

