﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestParametersTable"
(
	"Id"   Int           NOT NULL,
	"Text" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 12
DECLARE @Text VarChar(11) -- String
SET     @Text = 'Hallo Welt!'

INSERT INTO "TestParametersTable"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @text VarChar(3) -- String
SET     @text = 'bla'

SELECT
	"f"."Id",
	"f"."Text"
FROM
	"TestParametersTable" "f"
WHERE
	"f"."Text" = @text

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestParametersTable"';
END

