-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4

SELECT
	"t1"."Type",
	"t1"."Id",
	"t1"."Stored",
	Coalesce("t1"."Stored", '') || '!'
FROM
	"CalcSubtypeDual" "t1"
FETCH NEXT 2 ROWS ONLY

