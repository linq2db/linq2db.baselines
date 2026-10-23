-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'a'

INSERT INTO "VOptRow"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar -- String
SET     @Name = NULL

INSERT INTO "VOptRow"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

-- Firebird.5 Firebird4
SELECT
	"x"."Id",
	"x"."Name"
FROM
	"VOptRow" "x"
WHERE
	"x"."Name" IS NOT NULL

