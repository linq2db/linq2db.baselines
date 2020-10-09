BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"    Int    NOT NULL,
	"Int64" BigInt NOT NULL
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 0

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64"
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 3

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64"
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t1"."Id", 
	"t1"."Int64"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "CreateTableTypes"

