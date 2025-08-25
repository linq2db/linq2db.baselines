BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	Lower(substr(hex("t"."Id"), 7, 2) || substr(hex("t"."Id"), 5, 2) || substr(hex("t"."Id"), 3, 2) || substr(hex("t"."Id"), 1, 2) || '-' || substr(hex("t"."Id"), 11, 2) || substr(hex("t"."Id"), 9, 2) || '-' || substr(hex("t"."Id"), 15, 2) || substr(hex("t"."Id"), 13, 2) || '-' || substr(hex("t"."Id"), 17, 4) || '-' || substr(hex("t"."Id"), 21, 12))
FROM
	"TableWithGuid" "t"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(substr(hex("t"."Id"), 7, 2) || substr(hex("t"."Id"), 5, 2) || substr(hex("t"."Id"), 3, 2) || substr(hex("t"."Id"), 1, 2) || '-' || substr(hex("t"."Id"), 11, 2) || substr(hex("t"."Id"), 9, 2) || '-' || substr(hex("t"."Id"), 15, 2) || substr(hex("t"."Id"), 13, 2) || '-' || substr(hex("t"."Id"), 17, 4) || '-' || substr(hex("t"."Id"), 21, 12)) LIKE '%63d-0f%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(substr(hex("t"."Id"), 7, 2) || substr(hex("t"."Id"), 5, 2) || substr(hex("t"."Id"), 3, 2) || substr(hex("t"."Id"), 1, 2) || '-' || substr(hex("t"."Id"), 11, 2) || substr(hex("t"."Id"), 9, 2) || '-' || substr(hex("t"."Id"), 15, 2) || substr(hex("t"."Id"), 13, 2) || '-' || substr(hex("t"."Id"), 17, 4) || '-' || substr(hex("t"."Id"), 21, 12)) LIKE 'bc7b6%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(substr(hex("t"."Id"), 7, 2) || substr(hex("t"."Id"), 5, 2) || substr(hex("t"."Id"), 3, 2) || substr(hex("t"."Id"), 1, 2) || '-' || substr(hex("t"."Id"), 11, 2) || substr(hex("t"."Id"), 9, 2) || '-' || substr(hex("t"."Id"), 15, 2) || substr(hex("t"."Id"), 13, 2) || '-' || substr(hex("t"."Id"), 17, 4) || '-' || substr(hex("t"."Id"), 21, 12)) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(Lower(substr(hex("t"."Id"), 7, 2) || substr(hex("t"."Id"), 5, 2) || substr(hex("t"."Id"), 3, 2) || substr(hex("t"."Id"), 1, 2) || '-' || substr(hex("t"."Id"), 11, 2) || substr(hex("t"."Id"), 9, 2) || '-' || substr(hex("t"."Id"), 15, 2) || substr(hex("t"."Id"), 13, 2) || '-' || substr(hex("t"."Id"), 17, 4) || '-' || substr(hex("t"."Id"), 21, 12))) LIKE '8f4-53%' ESCAPE '~'

