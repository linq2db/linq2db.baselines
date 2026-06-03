-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Items VarChar(3) -- String
SET     @Items = 'A;B'

INSERT INTO "Issue5540"
(
	"Id",
	"Items"
)
VALUES
(
	@Id,
	@Items
)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Items"
FROM
	"Issue5540" "t1"

