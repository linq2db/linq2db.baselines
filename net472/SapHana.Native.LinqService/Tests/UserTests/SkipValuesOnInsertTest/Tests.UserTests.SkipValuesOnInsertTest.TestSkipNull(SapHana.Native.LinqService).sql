BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "PR_1598_Insert_Null_Table"
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
SET     @Name = 'Tommy'

INSERT INTO "PR_1598_Insert_Null_Table"
(
	"Id",
	"Name"
)
VALUES
(
	:"Id",
	:"Name"
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
	"PR_1598_Insert_Null_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "PR_1598_Insert_Null_Table"

