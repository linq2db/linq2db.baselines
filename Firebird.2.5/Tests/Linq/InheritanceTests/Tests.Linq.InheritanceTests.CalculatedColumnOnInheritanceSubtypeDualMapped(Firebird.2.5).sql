-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @Stored VarChar(4) -- String
SET     @Stored = 'John'

INSERT INTO "CalcSubtypeDual"
(
	"Id",
	"Type",
	"Stored"
)
VALUES
(
	@Id,
	@Type,
	@Stored
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Type",
	"t1"."Id",
	"t1"."Stored",
	Coalesce("t1"."Stored", '') || '!'
FROM
	"CalcSubtypeDual" "t1"

