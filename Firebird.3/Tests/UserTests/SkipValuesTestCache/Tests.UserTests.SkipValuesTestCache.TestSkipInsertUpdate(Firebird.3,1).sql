﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "PR_1598_Insert_Table_Cache"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Insert_Table_Cache" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(4))
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

