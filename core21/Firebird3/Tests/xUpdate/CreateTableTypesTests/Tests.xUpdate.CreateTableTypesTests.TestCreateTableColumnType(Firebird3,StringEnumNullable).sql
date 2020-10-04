﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"                 Int                                  NOT NULL,
	"StringEnumNullable" VarChar(2) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable VarChar -- String
SET     @StringEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable VarChar(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."StringEnumNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "CreateTableTypes"

