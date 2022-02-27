BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "PR_1598_Mixed_Table"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255)     NULL,
	"Age"  Integer           NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age  -- Int32
SET     @Age = 20

INSERT INTO "PR_1598_Mixed_Table"
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

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Mixed_Table"
SET
	"PR_1598_Mixed_Table"."Age" = :"Age"
WHERE
	"PR_1598_Mixed_Table"."Id" = :"Id"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Age  -- Int32
SET     @Age = 25

INSERT INTO "PR_1598_Mixed_Table"
(
	"Id",
	"Age"
)
VALUES
(
	:"Id",
	:"Age"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 2
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age  -- Int32
SET     @Age = 25
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	"PR_1598_Mixed_Table"
SET
	"PR_1598_Mixed_Table"."Name" = :"Name",
	"PR_1598_Mixed_Table"."Age" = :"Age"
WHERE
	"PR_1598_Mixed_Table"."Id" = :"Id"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 2
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "PR_1598_Mixed_Table"

