BeforeExecute
-- Firebird

CREATE TABLE "CreateTableTypes"
(
	"StringConverted" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Id"              Int                                    NOT NULL
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringConverted VarChar(4) -- String
SET     @StringConverted = 'null'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringConverted"
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringConverted VarChar(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringConverted"
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- Firebird

DROP TABLE "CreateTableTypes"

