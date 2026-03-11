-- DB2 DB2.LUW DB2LUW

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	BX'010203'
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."BlobValue"
FROM
	"BlobClass" "t1"
WHERE
	"t1"."Id" = 1
FETCH NEXT 1 ROWS ONLY

