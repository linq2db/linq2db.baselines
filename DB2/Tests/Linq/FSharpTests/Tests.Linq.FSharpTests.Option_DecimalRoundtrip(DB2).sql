-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value (4, 2) -- Decimal
SET     @Value = 12.34

INSERT INTO "OptionDecimalTable"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value Decimal
SET     @Value = NULL

INSERT INTO "OptionDecimalTable"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	"r"."Value"
FROM
	"OptionDecimalTable" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	"r"."Value"
FROM
	"OptionDecimalTable" "r"
WHERE
	"r"."Id" = 2
FETCH NEXT 2 ROWS ONLY

