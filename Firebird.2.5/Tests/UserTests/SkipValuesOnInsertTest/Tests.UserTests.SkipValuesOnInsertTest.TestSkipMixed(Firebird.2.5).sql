﻿BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Integer -- Int32
SET     @Age = 20

INSERT INTO "PR_1598_Mixed_Table"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Id,
	@Name,
	@Age
)

BeforeExecute
--  Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Mixed_Table" "t1"
SET
	"Age" = CAST(@Age AS Int)
WHERE
	"t1"."Id" = @Id

BeforeExecute
--  Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Age Integer -- Int32
SET     @Age = 25

INSERT INTO "PR_1598_Mixed_Table"
(
	"Id",
	"Age"
)
VALUES
(
	@Id,
	@Age
)

BeforeExecute
--  Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 2

BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Integer -- Int32
SET     @Age = 25
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"PR_1598_Mixed_Table" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(5)),
	"Age" = CAST(@Age AS Int)
WHERE
	"t1"."Id" = @Id

BeforeExecute
--  Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 2

