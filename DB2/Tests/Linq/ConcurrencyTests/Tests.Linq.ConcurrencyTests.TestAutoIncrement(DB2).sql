-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyAutoIncrement"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyAutoIncrement" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = @Value
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = @Value
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = @Value
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyAutoIncrement" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -8

DELETE FROM
	"ConcurrencyAutoIncrement" "obj"
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

