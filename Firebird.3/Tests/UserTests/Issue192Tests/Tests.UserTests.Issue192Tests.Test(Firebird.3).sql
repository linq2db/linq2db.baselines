BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Name VarChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'N'
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "TypeConvertTable"
(
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'Y'
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO "TypeConvertTable"
(
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @cond VarChar(36) -- String
SET     @cond = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."GuidValue" = @cond

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."GuidValue" = @GuidValue
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."GuidValue" = @GuidValue
FETCH NEXT 1 ROWS ONLY

