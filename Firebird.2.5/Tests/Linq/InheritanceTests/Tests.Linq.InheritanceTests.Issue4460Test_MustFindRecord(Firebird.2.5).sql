﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code VarChar(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname VarChar(5) -- String
SET     @Surname = 'Black'

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
VALUES
(
	@Id,
	@Code,
	@Name,
	@Surname
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Code",
	"t1"."Id",
	"t1"."Name",
	"t1"."Surname"
FROM
	"Issue4460Table" "t1"
WHERE
	"t1"."Code" = 'GrandChild'

