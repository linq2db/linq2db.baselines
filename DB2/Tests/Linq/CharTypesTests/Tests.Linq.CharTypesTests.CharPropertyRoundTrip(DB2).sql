-- DB2 DB2.LUW DB2LUW
DECLARE @CharFld Char(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO "CharFieldRecord"
(
	"CharFld"
)
VALUES
(
	@CharFld
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."CharFld"
FROM
	"CharFieldRecord" "t1"
FETCH NEXT 1 ROWS ONLY

