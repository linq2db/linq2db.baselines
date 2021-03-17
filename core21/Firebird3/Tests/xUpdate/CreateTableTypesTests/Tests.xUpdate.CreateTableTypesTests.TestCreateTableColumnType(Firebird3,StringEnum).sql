﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"         Int                                  NOT NULL,
	"StringEnum" VarChar(2) CHARACTER SET UNICODE_FSS NOT NULL
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnum VarChar(2) -- String
SET     @StringEnum = '14'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnum"
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnum VarChar(1) -- String
SET     @StringEnum = '4'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnum"
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."StringEnum"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateTableTypes"';
END

