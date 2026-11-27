-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Integer -- Int32
SET     @Age = 55

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:"Id",
	:"Name",
	:"Age"
)

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertTable" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer -- Int32
SET     @Age = 50

INSERT INTO "SkipOnInsertTable"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:"Id",
	:"Name",
	:"Age"
)

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertTable" "t"
WHERE
	"t"."Id" = 2
LIMIT 1

