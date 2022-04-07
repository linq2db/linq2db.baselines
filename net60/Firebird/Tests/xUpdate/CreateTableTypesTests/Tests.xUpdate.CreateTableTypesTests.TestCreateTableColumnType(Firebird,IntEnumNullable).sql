﻿BeforeExecute
-- Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int NOT NULL,
	"IntEnumNullable" Int
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = 60

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."IntEnumNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateTableTypes"';
END

