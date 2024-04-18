﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TypeConvertTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TypeConvertTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TypeConvertTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TypeConvertTable"
			(
				"Name"      VarChar(50) CHARACTER SET UNICODE_FSS NOT NULL,
				"BoolValue" Char                                  NOT NULL,
				"GuidValue" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'N'

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = 'Y'

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	Count(*)
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."GuidValue" = @GuidValue

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'N'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'Y'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."BoolValue" = @BoolValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."GuidValue" = @GuidValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Name",
	"t1"."BoolValue",
	"t1"."GuidValue"
FROM
	"TypeConvertTable" "t1"
WHERE
	"t1"."GuidValue" = @GuidValue
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TypeConvertTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TypeConvertTable"';
END

