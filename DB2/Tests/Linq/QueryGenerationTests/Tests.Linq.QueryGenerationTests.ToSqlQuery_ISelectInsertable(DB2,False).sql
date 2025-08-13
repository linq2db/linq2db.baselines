BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentitySrc"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @addition Integer(4) -- Int32
SET     @addition = 123

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	"t1"."Value" + @addition
FROM
	"TableWithIdentitySrc" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

