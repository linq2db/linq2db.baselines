-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Integer(4) -- Int32
SET     @Value = 42

INSERT INTO "OptionNullableElemTable"
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
DECLARE @Value Integer -- Int32
SET     @Value = NULL

INSERT INTO "OptionNullableElemTable"
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
	"OptionNullableElemTable" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	"r"."Value"
FROM
	"OptionNullableElemTable" "r"
WHERE
	"r"."Id" = 2
FETCH NEXT 2 ROWS ONLY

